// Generated by gencpp from file mobot_pub_des_state/integer_queryResponse.msg
// DO NOT EDIT!


#ifndef MOBOT_PUB_DES_STATE_MESSAGE_INTEGER_QUERYRESPONSE_H
#define MOBOT_PUB_DES_STATE_MESSAGE_INTEGER_QUERYRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mobot_pub_des_state
{
template <class ContainerAllocator>
struct integer_queryResponse_
{
  typedef integer_queryResponse_<ContainerAllocator> Type;

  integer_queryResponse_()
    : int_val(0)  {
    }
  integer_queryResponse_(const ContainerAllocator& _alloc)
    : int_val(0)  {
  (void)_alloc;
    }



   typedef int32_t _int_val_type;
  _int_val_type int_val;





  typedef boost::shared_ptr< ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator> const> ConstPtr;

}; // struct integer_queryResponse_

typedef ::mobot_pub_des_state::integer_queryResponse_<std::allocator<void> > integer_queryResponse;

typedef boost::shared_ptr< ::mobot_pub_des_state::integer_queryResponse > integer_queryResponsePtr;
typedef boost::shared_ptr< ::mobot_pub_des_state::integer_queryResponse const> integer_queryResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator1> & lhs, const ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator2> & rhs)
{
  return lhs.int_val == rhs.int_val;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator1> & lhs, const ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mobot_pub_des_state

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "648675cba6b3813e536ad7dad105da98";
  }

  static const char* value(const ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x648675cba6b3813eULL;
  static const uint64_t static_value2 = 0x536ad7dad105da98ULL;
};

template<class ContainerAllocator>
struct DataType< ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mobot_pub_des_state/integer_queryResponse";
  }

  static const char* value(const ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#response: an integer\n"
"int32 int_val\n"
"\n"
;
  }

  static const char* value(const ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.int_val);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct integer_queryResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mobot_pub_des_state::integer_queryResponse_<ContainerAllocator>& v)
  {
    s << indent << "int_val: ";
    Printer<int32_t>::stream(s, indent + "  ", v.int_val);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOBOT_PUB_DES_STATE_MESSAGE_INTEGER_QUERYRESPONSE_H