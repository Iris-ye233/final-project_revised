# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from example_interactive_marker/ImNodeSvcMsgRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class ImNodeSvcMsgRequest(genpy.Message):
  _md5sum = "2d630ce645672dd1e915a86575c8740b"
  _type = "example_interactive_marker/ImNodeSvcMsgRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#This service message has a command mode (an int) and fields to accept and/or return a pose
int32 cmd_mode

#some requests require the client to specify a desired pose for the marker
#as pose-stamped, also includes the reference frame and time stamp
geometry_msgs/PoseStamped poseStamped_IM_desired


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['cmd_mode','poseStamped_IM_desired']
  _slot_types = ['int32','geometry_msgs/PoseStamped']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cmd_mode,poseStamped_IM_desired

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ImNodeSvcMsgRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.cmd_mode is None:
        self.cmd_mode = 0
      if self.poseStamped_IM_desired is None:
        self.poseStamped_IM_desired = geometry_msgs.msg.PoseStamped()
    else:
      self.cmd_mode = 0
      self.poseStamped_IM_desired = geometry_msgs.msg.PoseStamped()

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
      buff.write(_get_struct_i3I().pack(_x.cmd_mode, _x.poseStamped_IM_desired.header.seq, _x.poseStamped_IM_desired.header.stamp.secs, _x.poseStamped_IM_desired.header.stamp.nsecs))
      _x = self.poseStamped_IM_desired.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.poseStamped_IM_desired.pose.position.x, _x.poseStamped_IM_desired.pose.position.y, _x.poseStamped_IM_desired.pose.position.z, _x.poseStamped_IM_desired.pose.orientation.x, _x.poseStamped_IM_desired.pose.orientation.y, _x.poseStamped_IM_desired.pose.orientation.z, _x.poseStamped_IM_desired.pose.orientation.w))
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
      if self.poseStamped_IM_desired is None:
        self.poseStamped_IM_desired = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 16
      (_x.cmd_mode, _x.poseStamped_IM_desired.header.seq, _x.poseStamped_IM_desired.header.stamp.secs, _x.poseStamped_IM_desired.header.stamp.nsecs,) = _get_struct_i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.poseStamped_IM_desired.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.poseStamped_IM_desired.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.poseStamped_IM_desired.pose.position.x, _x.poseStamped_IM_desired.pose.position.y, _x.poseStamped_IM_desired.pose.position.z, _x.poseStamped_IM_desired.pose.orientation.x, _x.poseStamped_IM_desired.pose.orientation.y, _x.poseStamped_IM_desired.pose.orientation.z, _x.poseStamped_IM_desired.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
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
      buff.write(_get_struct_i3I().pack(_x.cmd_mode, _x.poseStamped_IM_desired.header.seq, _x.poseStamped_IM_desired.header.stamp.secs, _x.poseStamped_IM_desired.header.stamp.nsecs))
      _x = self.poseStamped_IM_desired.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.poseStamped_IM_desired.pose.position.x, _x.poseStamped_IM_desired.pose.position.y, _x.poseStamped_IM_desired.pose.position.z, _x.poseStamped_IM_desired.pose.orientation.x, _x.poseStamped_IM_desired.pose.orientation.y, _x.poseStamped_IM_desired.pose.orientation.z, _x.poseStamped_IM_desired.pose.orientation.w))
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
      if self.poseStamped_IM_desired is None:
        self.poseStamped_IM_desired = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 16
      (_x.cmd_mode, _x.poseStamped_IM_desired.header.seq, _x.poseStamped_IM_desired.header.stamp.secs, _x.poseStamped_IM_desired.header.stamp.nsecs,) = _get_struct_i3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.poseStamped_IM_desired.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.poseStamped_IM_desired.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.poseStamped_IM_desired.pose.position.x, _x.poseStamped_IM_desired.pose.position.y, _x.poseStamped_IM_desired.pose.position.z, _x.poseStamped_IM_desired.pose.orientation.x, _x.poseStamped_IM_desired.pose.orientation.y, _x.poseStamped_IM_desired.pose.orientation.z, _x.poseStamped_IM_desired.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
_struct_i3I = None
def _get_struct_i3I():
    global _struct_i3I
    if _struct_i3I is None:
        _struct_i3I = struct.Struct("<i3I")
    return _struct_i3I
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from example_interactive_marker/ImNodeSvcMsgResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class ImNodeSvcMsgResponse(genpy.Message):
  _md5sum = "dbedb23e0aaabca1697bafa8180aafdc"
  _type = "example_interactive_marker/ImNodeSvcMsgResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """#return the IM pose
geometry_msgs/PoseStamped poseStamped_IM_current


================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['poseStamped_IM_current']
  _slot_types = ['geometry_msgs/PoseStamped']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       poseStamped_IM_current

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ImNodeSvcMsgResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.poseStamped_IM_current is None:
        self.poseStamped_IM_current = geometry_msgs.msg.PoseStamped()
    else:
      self.poseStamped_IM_current = geometry_msgs.msg.PoseStamped()

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
      buff.write(_get_struct_3I().pack(_x.poseStamped_IM_current.header.seq, _x.poseStamped_IM_current.header.stamp.secs, _x.poseStamped_IM_current.header.stamp.nsecs))
      _x = self.poseStamped_IM_current.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.poseStamped_IM_current.pose.position.x, _x.poseStamped_IM_current.pose.position.y, _x.poseStamped_IM_current.pose.position.z, _x.poseStamped_IM_current.pose.orientation.x, _x.poseStamped_IM_current.pose.orientation.y, _x.poseStamped_IM_current.pose.orientation.z, _x.poseStamped_IM_current.pose.orientation.w))
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
      if self.poseStamped_IM_current is None:
        self.poseStamped_IM_current = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.poseStamped_IM_current.header.seq, _x.poseStamped_IM_current.header.stamp.secs, _x.poseStamped_IM_current.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.poseStamped_IM_current.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.poseStamped_IM_current.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.poseStamped_IM_current.pose.position.x, _x.poseStamped_IM_current.pose.position.y, _x.poseStamped_IM_current.pose.position.z, _x.poseStamped_IM_current.pose.orientation.x, _x.poseStamped_IM_current.pose.orientation.y, _x.poseStamped_IM_current.pose.orientation.z, _x.poseStamped_IM_current.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
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
      buff.write(_get_struct_3I().pack(_x.poseStamped_IM_current.header.seq, _x.poseStamped_IM_current.header.stamp.secs, _x.poseStamped_IM_current.header.stamp.nsecs))
      _x = self.poseStamped_IM_current.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_7d().pack(_x.poseStamped_IM_current.pose.position.x, _x.poseStamped_IM_current.pose.position.y, _x.poseStamped_IM_current.pose.position.z, _x.poseStamped_IM_current.pose.orientation.x, _x.poseStamped_IM_current.pose.orientation.y, _x.poseStamped_IM_current.pose.orientation.z, _x.poseStamped_IM_current.pose.orientation.w))
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
      if self.poseStamped_IM_current is None:
        self.poseStamped_IM_current = geometry_msgs.msg.PoseStamped()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.poseStamped_IM_current.header.seq, _x.poseStamped_IM_current.header.stamp.secs, _x.poseStamped_IM_current.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.poseStamped_IM_current.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.poseStamped_IM_current.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.poseStamped_IM_current.pose.position.x, _x.poseStamped_IM_current.pose.position.y, _x.poseStamped_IM_current.pose.position.z, _x.poseStamped_IM_current.pose.orientation.x, _x.poseStamped_IM_current.pose.orientation.y, _x.poseStamped_IM_current.pose.orientation.z, _x.poseStamped_IM_current.pose.orientation.w,) = _get_struct_7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_7d = None
def _get_struct_7d():
    global _struct_7d
    if _struct_7d is None:
        _struct_7d = struct.Struct("<7d")
    return _struct_7d
class ImNodeSvcMsg(object):
  _type          = 'example_interactive_marker/ImNodeSvcMsg'
  _md5sum = '64798921d798e32da065649fee6f759f'
  _request_class  = ImNodeSvcMsgRequest
  _response_class = ImNodeSvcMsgResponse
