// Generated by gencpp from file object_finder/objectFinderGoal.msg
// DO NOT EDIT!


#ifndef OBJECT_FINDER_MESSAGE_OBJECTFINDERGOAL_H
#define OBJECT_FINDER_MESSAGE_OBJECTFINDERGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace object_finder
{
template <class ContainerAllocator>
struct objectFinderGoal_
{
  typedef objectFinderGoal_<ContainerAllocator> Type;

  objectFinderGoal_()
    : object_id(0)
    , known_surface_ht(false)
    , surface_ht(0.0)  {
    }
  objectFinderGoal_(const ContainerAllocator& _alloc)
    : object_id(0)
    , known_surface_ht(false)
    , surface_ht(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _object_id_type;
  _object_id_type object_id;

   typedef uint8_t _known_surface_ht_type;
  _known_surface_ht_type known_surface_ht;

   typedef float _surface_ht_type;
  _surface_ht_type surface_ht;





  typedef boost::shared_ptr< ::object_finder::objectFinderGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::object_finder::objectFinderGoal_<ContainerAllocator> const> ConstPtr;

}; // struct objectFinderGoal_

typedef ::object_finder::objectFinderGoal_<std::allocator<void> > objectFinderGoal;

typedef boost::shared_ptr< ::object_finder::objectFinderGoal > objectFinderGoalPtr;
typedef boost::shared_ptr< ::object_finder::objectFinderGoal const> objectFinderGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::object_finder::objectFinderGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::object_finder::objectFinderGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::object_finder::objectFinderGoal_<ContainerAllocator1> & lhs, const ::object_finder::objectFinderGoal_<ContainerAllocator2> & rhs)
{
  return lhs.object_id == rhs.object_id &&
    lhs.known_surface_ht == rhs.known_surface_ht &&
    lhs.surface_ht == rhs.surface_ht;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::object_finder::objectFinderGoal_<ContainerAllocator1> & lhs, const ::object_finder::objectFinderGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace object_finder

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::object_finder::objectFinderGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_finder::objectFinderGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_finder::objectFinderGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_finder::objectFinderGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_finder::objectFinderGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_finder::objectFinderGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::object_finder::objectFinderGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8657c16ee27b175765f0d86cc8f66fbd";
  }

  static const char* value(const ::object_finder::objectFinderGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8657c16ee27b1757ULL;
  static const uint64_t static_value2 = 0x65f0d86cc8f66fbdULL;
};

template<class ContainerAllocator>
struct DataType< ::object_finder::objectFinderGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "object_finder/objectFinderGoal";
  }

  static const char* value(const ::object_finder::objectFinderGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::object_finder::objectFinderGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#objectFinder.action\n"
"#goal:\n"
"#get object ID codes from <object_manipulation_properties/object_ID_codes.h>\n"
"\n"
"#goal fields to fill in:\n"
"int32 object_id\n"
"\n"
"#boolean to declare if object is on a horizontal surface of known height:\n"
"bool known_surface_ht\n"
"\n"
"#if surface ht is known, fill it in\n"
"float32 surface_ht\n"
"\n"
;
  }

  static const char* value(const ::object_finder::objectFinderGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::object_finder::objectFinderGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.object_id);
      stream.next(m.known_surface_ht);
      stream.next(m.surface_ht);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct objectFinderGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::object_finder::objectFinderGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::object_finder::objectFinderGoal_<ContainerAllocator>& v)
  {
    s << indent << "object_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.object_id);
    s << indent << "known_surface_ht: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.known_surface_ht);
    s << indent << "surface_ht: ";
    Printer<float>::stream(s, indent + "  ", v.surface_ht);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBJECT_FINDER_MESSAGE_OBJECTFINDERGOAL_H
