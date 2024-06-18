import RPi.GPIO as GPIO
import time
import rospy
from geometry_msgs.msg import Twist
import sys, select, termios, tty

# Disable warnings
GPIO.setwarnings(False)

# Pin setup
GPIO.setmode(GPIO.BCM)
TRIG1 = 5
ECHO1 = 6
TRIG2 = 16
ECHO2 = 12
TRIG3 = 20
ECHO3 = 21
LED = 25

threshold = 5
threshold_distance1 = 15

GPIO.setup(TRIG1, GPIO.OUT)
GPIO.setup(ECHO1, GPIO.IN)
GPIO.setup(TRIG2, GPIO.OUT)
GPIO.setup(ECHO2, GPIO.IN)
GPIO.setup(TRIG3, GPIO.OUT)
GPIO.setup(ECHO3, GPIO.IN)
GPIO.setup(LED, GPIO.OUT)

GPIO.output(LED, False)
time.sleep(0.5)

def mesure_distance(TRIG, ECHO):
    """
    Function to measure distance using HC-SR04 ultrasonic sensor.
    Returns the measured distance in centimeters.
    """
    GPIO.output(TRIG, False)
    time.sleep(0.05)

    GPIO.output(TRIG, True)
    time.sleep(0.00001)
    GPIO.output(TRIG, False)

    pulse_start = time.time()
    while GPIO.input(ECHO) == 0:
        pulse_start = time.time()
    while GPIO.input(ECHO) == 1:
        pulse_end = time.time()

    pulse_duration = pulse_end - pulse_start
    distance = pulse_duration * 17150
    distance = round(distance, 2)

    return distance

def getKey():
    tty.setraw(sys.stdin.fileno())
    rlist, _, _ = select.select([sys.stdin], [], [], 0.1)
    if rlist:
        key = sys.stdin.read(1)
    else:
        key = ''
    termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)
    return key

def tourner_2_degres(pub, direction, vitesse_angulaire=1.0):
    """
    Function to turn the robot by 2 degrees.
    """
    twist = Twist()
    twist.linear.x = 0
    twist.angular.z = vitesse_angulaire if direction == 'gauche' else -vitesse_angulaire
    pub.publish(twist)
    time.sleep(0.045)
    twist.angular.z = 0
    pub.publish(twist)

def tourner_69_degres(pub, direction, vitesse_angulaire=1.0):
    """
    Function to turn the robot by 69 degrees.
    """
    twist = Twist()
    twist.linear.x = 0
    twist.angular.z = vitesse_angulaire if direction == 'gauche' else -vitesse_angulaire
    pub.publish(twist)
    time.sleep(1.53)
    twist.angular.z = 0
    pub.publish(twist)

def stabiliser(pub):
    """
    Function to stabilize the robot in a straight line after a minor turn.
    """
    twist = Twist()
    twist.linear.x = -0.1
    twist.angular.z = 0
    pub.publish(twist)
    time.sleep(0.1)
    twist.linear.x = 0
    pub.publish(twist)

def reculer(pub, duration):
    """
    Function to make the robot reverse for a given duration.
    """
    twist = Twist()
    twist.linear.x = -0.2
    twist.angular.z = 0
    pub.publish(twist)
    time.sleep(duration)
    twist.linear.x = 0
    pub.publish(twist)

if __name__ == "__main__":
    settings = termios.tcgetattr(sys.stdin)
    rospy.init_node('robot_ultrason_teleop')
    pub = rospy.Publisher('cmd_vel', Twist, queue_size=1)

    speed = -0.2  # Negative speed for slow reversing
    turn = 0.0    # Ensure angular speed is zero for straight reversing
    status = 0
    running = False
    rotation_count = 0  # Rotation counter

    print("Press 'a' to start teleoperating the robot.")
    print("Press 'Ctrl + C' to stop the program.")

    try:
        while True:
            key = getKey()

            if key == 'a':
                running = True
                print("Teleoperation started.")

            if key == 'q':
                running = False
                print("Teleoperation stopped.")
                twist = Twist()
                twist.linear.x = 0
                twist.angular.z = 0
                pub.publish(twist)

            if rotation_count >= 8:
                reculer(pub, 1)  # Reverse for 1 second
                twist = Twist()
                twist.linear.x = 0
                twist.angular.z = 0
                pub.publish(twist)
                break  # Exit the loop to stop the robot

            if rotation_count >= 5:
                reculer(pub, 2.5)  # Reverse for 2.5 seconds
                tourner_69_degres(pub, 'droite')
                rotation_count = 0  # Reset the counter

            if key == '\x03':  # Ctrl + C to exit
                raise KeyboardInterrupt

            if running:
                distance1 = mesure_distance(TRIG1, ECHO1)
                distance2 = mesure_distance(TRIG2, ECHO2)
                distance3 = mesure_distance(TRIG3, ECHO3)

                print(f"Distance1: {distance1} cm")
                print(f"Distance2: {distance2} cm")
                print(f"Distance3: {distance3} cm")

                twist = Twist()

                if distance3 < threshold_distance1:
                    print("Obstacle detected by Distance 3, stopping and evaluating distances.")
                    twist.linear.x = 0
                    twist.angular.z = 0
                    pub.publish(twist)
                    time.sleep(1)

                    distance1 = mesure_distance(TRIG1, ECHO1)
                    distance2 = mesure_distance(TRIG2, ECHO2)
                    distance3 = mesure_distance(TRIG3, ECHO3)

                    max_distance = max(distance1, distance2, distance3)
                    if max_distance == distance1:
                        print("Turning 69 degrees to the left.")
                        direction = 'gauche'
                    elif max_distance == distance2:
                        print("Turning 69 degrees to the right.")
                        direction = 'droite'
                    else:
                        print("Turning 69 degrees towards the direction of the greatest distance.")
                        direction = 'gauche' if distance3 >= threshold else 'droite'

                    tourner_69_degres(pub, direction)
                    rotation_count += 1
                elif distance1 < threshold or distance2 < threshold:
                    print("Obstacle detected within 5 cm to the left or right, recalibrating to maintain distance.")
                    if distance1 < threshold:
                        print("Too close to the left, turning slightly to the right.")
                        tourner_2_degres(pub, 'droite')
                        stabiliser(pub)
                    if distance2 < threshold:
                        print("Too close to the right, turning slightly to the left.")
                        tourner_2_degres(pub, 'gauche')
                        stabiliser(pub)
                else:
                    print("No obstacle detected to the left or right.")
                    twist.linear.x = speed
                    twist.angular.z = turn

                pub.publish(twist)
                GPIO.output(LED, distance1 < threshold or distance2 < threshold or distance3 < threshold)

                time.sleep(0.1)

    except KeyboardInterrupt:
        print("Program interrupted by the user")
    finally:
        twist = Twist()
        twist.linear.x = 0
        twist.angular.z = 0
        pub.publish(twist)
        GPIO.cleanup()
        termios.tcsetattr(sys.stdin, termios.TCSADRAIN, settings)

