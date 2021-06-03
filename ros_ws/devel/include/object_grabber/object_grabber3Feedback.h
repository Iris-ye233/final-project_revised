// Generated by gencpp from file object_grabber/object_grabber3Feedback.msg
// DO NOT EDIT!


#ifndef OBJECT_GRABBER_MESSAGE_OBJECT_GRABBER3FEEDBACK_H
#define OBJECT_GRABBER_MESSAGE_OBJECT_GRABBER3FEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace object_grabber
{
template <class ContainerAllocator>
struct object_grabber3Feedback_
{
  typedef object_grabber3Feedback_<ContainerAllocator> Type;

  object_grabber3Feedback_()
    : fdbk(0)  {
    }
  object_grabber3Feedback_(const ContainerAllocator& _alloc)
    : fdbk(0)  {
  (void)_alloc;
    }



   typedef int32_t _fdbk_type;
  _fdbk_type fdbk;





  typedef boost::shared_ptr< ::object_grabber::object_grabber3Feedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::object_grabber::object_grabber3Feedback_<ContainerAllocator> const> ConstPtr;

}; // struct object_grabber3Feedback_

typedef ::object_grabber::object_grabber3Feedback_<std::allocator<void> > object_grabber3Feedback;

typedef boost::shared_ptr< ::object_grabber::object_grabber3Feedback > object_grabber3FeedbackPtr;
typedef boost::shared_ptr< ::object_grabber::object_grabber3Feedback const> object_grabber3FeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::object_grabber::object_grabber3Feedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::object_grabber::object_grabber3Feedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::object_grabber::object_grabber3Feedback_<ContainerAllocator1> & lhs, const ::object_grabber::object_grabber3Feedback_<ContainerAllocator2> & rhs)
{
  return lhs.fdbk == rhs.fdbk;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::object_grabber::object_grabber3Feedback_<ContainerAllocator1> & lhs, const ::object_grabber::object_grabber3Feedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace object_grabber

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::object_grabber::object_grabber3Feedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_grabber::object_grabber3Feedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_grabber::object_grabber3Feedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_grabber::object_grabber3Feedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_grabber::object_grabber3Feedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_grabber::object_grabber3Feedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::object_grabber::object_grabber3Feedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "46cc8f8da6ebf35aedc6bad2e96b2e59";
  }

  static const char* value(const ::object_grabber::object_grabber3Feedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x46cc8f8da6ebf35aULL;
  static const uint64_t static_value2 = 0xedc6bad2e96b2e59ULL;
};

template<class ContainerAllocator>
struct DataType< ::object_grabber::object_grabber3Feedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "object_grabber/object_grabber3Feedback";
  }

  static const char* value(const ::object_grabber::object_grabber3Feedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::object_grabber::object_grabber3Feedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#feedback: optional; \n"
"int32 fdbk\n"
"\n"
;
  }

  static const char* value(const ::object_grabber::object_grabber3Feedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::object_grabber::object_grabber3Feedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.fdbk);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct object_grabber3Feedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::object_grabber::object_grabber3Feedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::object_grabber::object_grabber3Feedback_<ContainerAllocator>& v)
  {
    s << indent << "fdbk: ";
    Printer<int32_t>::stream(s, indent + "  ", v.fdbk);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBJECT_GRABBER_MESSAGE_OBJECT_GRABBER3FEEDBACK_H
