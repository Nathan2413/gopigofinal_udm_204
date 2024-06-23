

---

# Gopigofinal_udm_204

The purpose of this project is to make the GoPiGo robot move from point A to point B while avoiding obstacles. We used 3 ultrasonic sensors to detect obstacles.

## Installation

To download the **Gopigofinal_udm_204** project, please use the following command:

```bash
git clone https://github.com/Nathan2413/gopigofinal_udm_204.git
```

Once downloaded, go to the project directory:

```bash
cd gopigofinal_udm_204
```

## Configuring the GoPiGo3 Package

To configure the GoPiGo3 package, follow these steps:

1. Create a `src` directory:

```bash
mkdir src
```

2. Enter the `src` directory:

```bash
cd src
```

3. Download the GoPiGo3 package:

```bash
git clone https://github.com/Nathan2413/gopigo3_udm_204.git
```

4. Return to the project directory:

```bash
cd ..
```

5. Configure your terminal environment to recognize the ROS packages:

```bash
source devel/setup.bash
```

6. Launch the launch file to initialize the robot:

```bash
roslaunch bringup_car differential_drives.launch
```

## Launching the GoPiGo3 Robot

1. Open a new terminal.
2. Enter the project directory:

```bash
cd gopigofinal_udm_204
```

3. Launch the Python program:

```bash
python3 finalisation.py
```

4. To start the robot, press the `a` key.

## Developers

- Nathan RC (🇲🇬)
- Hani R (🇲🇬)
- Berenice Z (🇨🇩)
- Lahizarre P (🇲🇬)

---

