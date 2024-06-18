# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from bringup_car/MotorStatus.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class MotorStatus(genpy.Message):
  _md5sum = "fa9d221cf281ffba79b583b9dd588c6f"
  _type = "bringup_car/MotorStatus"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """bool low_voltage
bool overloaded
int8 power      # PWM duty cycle -100 ... 100
float32 encoder # degree
float32 speed   # degree per second
"""
  __slots__ = ['low_voltage','overloaded','power','encoder','speed']
  _slot_types = ['bool','bool','int8','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       low_voltage,overloaded,power,encoder,speed

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MotorStatus, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.low_voltage is None:
        self.low_voltage = False
      if self.overloaded is None:
        self.overloaded = False
      if self.power is None:
        self.power = 0
      if self.encoder is None:
        self.encoder = 0.
      if self.speed is None:
        self.speed = 0.
    else:
      self.low_voltage = False
      self.overloaded = False
      self.power = 0
      self.encoder = 0.
      self.speed = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2Bb2f().pack(_x.low_voltage, _x.overloaded, _x.power, _x.encoder, _x.speed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 11
      (_x.low_voltage, _x.overloaded, _x.power, _x.encoder, _x.speed,) = _get_struct_2Bb2f().unpack(str[start:end])
      self.low_voltage = bool(self.low_voltage)
      self.overloaded = bool(self.overloaded)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2Bb2f().pack(_x.low_voltage, _x.overloaded, _x.power, _x.encoder, _x.speed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      _x = self
      start = end
      end += 11
      (_x.low_voltage, _x.overloaded, _x.power, _x.encoder, _x.speed,) = _get_struct_2Bb2f().unpack(str[start:end])
      self.low_voltage = bool(self.low_voltage)
      self.overloaded = bool(self.overloaded)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2Bb2f = None
def _get_struct_2Bb2f():
    global _struct_2Bb2f
    if _struct_2Bb2f is None:
        _struct_2Bb2f = struct.Struct("<2Bb2f")
    return _struct_2Bb2f
