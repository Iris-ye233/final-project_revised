// Generated by gencpp from file baxter_trajectory_streamer/trajFeedback.msg
// DO NOT EDIT!


#ifndef BAXTER_TRAJECTORY_STREAMER_MESSAGE_TRAJFEEDBACK_H
#define BAXTER_TRAJECTORY_STREAMER_MESSAGE_TRAJFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace baxter_trajectory_streamer
{
template <class ContainerAllocator>
struct trajFeedback_
{
  typedef trajFeedback_<ContainerAllocator> Type;

  trajFeedback_()
    : fdbk(0)  {
    }
  trajFeedback_(const ContainerAllocator& _alloc)
    : fdbk(0)  {
  (void)_alloc;
    }



   typedef int32_t _fdbk_type;
  _fdbk_type fdbk;





  typedef boost::shared_ptr< ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct trajFeedback_

typedef ::baxter_trajectory_streamer::trajFeedback_<std::allocator<void> > trajFeedback;

typedef boost::shared_ptr< ::baxter_trajectory_streamer::trajFeedback > trajFeedbackPtr;
typedef boost::shared_ptr< ::baxter_trajectory_streamer::trajFeedback const> trajFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator1> & lhs, const ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.fdbk == rhs.fdbk;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator1> & lhs, const ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace baxter_trajectory_streamer

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "46cc8f8da6ebf35aedc6bad2e96b2e59";
  }

  static const char* value(const ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x46cc8f8da6ebf35aULL;
  static const uint64_t static_value2 = 0xedc6bad2e96b2e59ULL;
};

template<class ContainerAllocator>
struct DataType< ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "baxter_trajectory_streamer/trajFeedback";
  }

  static const char* value(const ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#feedback: optional; could declare step number of trajectory in progress\n"
"int32 fdbk\n"
"\n"
;
  }

  static const char* value(const ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.fdbk);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct trajFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::baxter_trajectory_streamer::trajFeedback_<ContainerAllocator>& v)
  {
    s << indent << "fdbk: ";
    Printer<int32_t>::stream(s, indent + "  ", v.fdbk);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BAXTER_TRAJECTORY_STREAMER_MESSAGE_TRAJFEEDBACK_H