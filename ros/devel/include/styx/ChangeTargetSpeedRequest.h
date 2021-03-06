// Generated by gencpp from file styx/ChangeTargetSpeedRequest.msg
// DO NOT EDIT!


#ifndef STYX_MESSAGE_CHANGETARGETSPEEDREQUEST_H
#define STYX_MESSAGE_CHANGETARGETSPEEDREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace styx
{
template <class ContainerAllocator>
struct ChangeTargetSpeedRequest_
{
  typedef ChangeTargetSpeedRequest_<ContainerAllocator> Type;

  ChangeTargetSpeedRequest_()
    : target_speed(0.0)  {
    }
  ChangeTargetSpeedRequest_(const ContainerAllocator& _alloc)
    : target_speed(0.0)  {
  (void)_alloc;
    }



   typedef double _target_speed_type;
  _target_speed_type target_speed;




  typedef boost::shared_ptr< ::styx::ChangeTargetSpeedRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::styx::ChangeTargetSpeedRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ChangeTargetSpeedRequest_

typedef ::styx::ChangeTargetSpeedRequest_<std::allocator<void> > ChangeTargetSpeedRequest;

typedef boost::shared_ptr< ::styx::ChangeTargetSpeedRequest > ChangeTargetSpeedRequestPtr;
typedef boost::shared_ptr< ::styx::ChangeTargetSpeedRequest const> ChangeTargetSpeedRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::styx::ChangeTargetSpeedRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::styx::ChangeTargetSpeedRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace styx

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::styx::ChangeTargetSpeedRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::styx::ChangeTargetSpeedRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::styx::ChangeTargetSpeedRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::styx::ChangeTargetSpeedRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::styx::ChangeTargetSpeedRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::styx::ChangeTargetSpeedRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::styx::ChangeTargetSpeedRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b977bd6dc030d5b2613eb2df524b8b40";
  }

  static const char* value(const ::styx::ChangeTargetSpeedRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb977bd6dc030d5b2ULL;
  static const uint64_t static_value2 = 0x613eb2df524b8b40ULL;
};

template<class ContainerAllocator>
struct DataType< ::styx::ChangeTargetSpeedRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "styx/ChangeTargetSpeedRequest";
  }

  static const char* value(const ::styx::ChangeTargetSpeedRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::styx::ChangeTargetSpeedRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 target_speed\n\
";
  }

  static const char* value(const ::styx::ChangeTargetSpeedRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::styx::ChangeTargetSpeedRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.target_speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChangeTargetSpeedRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::styx::ChangeTargetSpeedRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::styx::ChangeTargetSpeedRequest_<ContainerAllocator>& v)
  {
    s << indent << "target_speed: ";
    Printer<double>::stream(s, indent + "  ", v.target_speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STYX_MESSAGE_CHANGETARGETSPEEDREQUEST_H
