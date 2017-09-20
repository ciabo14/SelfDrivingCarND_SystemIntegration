// Generated by gencpp from file styx/ChangeControlPIDCoeffRequest.msg
// DO NOT EDIT!


#ifndef STYX_MESSAGE_CHANGECONTROLPIDCOEFFREQUEST_H
#define STYX_MESSAGE_CHANGECONTROLPIDCOEFFREQUEST_H


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
struct ChangeControlPIDCoeffRequest_
{
  typedef ChangeControlPIDCoeffRequest_<ContainerAllocator> Type;

  ChangeControlPIDCoeffRequest_()
    : pidType()
    , Kp(0.0)
    , Ki(0.0)
    , Kd(0.0)  {
    }
  ChangeControlPIDCoeffRequest_(const ContainerAllocator& _alloc)
    : pidType(_alloc)
    , Kp(0.0)
    , Ki(0.0)
    , Kd(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _pidType_type;
  _pidType_type pidType;

   typedef double _Kp_type;
  _Kp_type Kp;

   typedef double _Ki_type;
  _Ki_type Ki;

   typedef double _Kd_type;
  _Kd_type Kd;




  typedef boost::shared_ptr< ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ChangeControlPIDCoeffRequest_

typedef ::styx::ChangeControlPIDCoeffRequest_<std::allocator<void> > ChangeControlPIDCoeffRequest;

typedef boost::shared_ptr< ::styx::ChangeControlPIDCoeffRequest > ChangeControlPIDCoeffRequestPtr;
typedef boost::shared_ptr< ::styx::ChangeControlPIDCoeffRequest const> ChangeControlPIDCoeffRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace styx

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "32fa03214de76fbca04b20cf11091df6";
  }

  static const char* value(const ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x32fa03214de76fbcULL;
  static const uint64_t static_value2 = 0xa04b20cf11091df6ULL;
};

template<class ContainerAllocator>
struct DataType< ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "styx/ChangeControlPIDCoeffRequest";
  }

  static const char* value(const ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string pidType\n\
float64 Kp\n\
float64 Ki\n\
float64 Kd\n\
";
  }

  static const char* value(const ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pidType);
      stream.next(m.Kp);
      stream.next(m.Ki);
      stream.next(m.Kd);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ChangeControlPIDCoeffRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::styx::ChangeControlPIDCoeffRequest_<ContainerAllocator>& v)
  {
    s << indent << "pidType: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.pidType);
    s << indent << "Kp: ";
    Printer<double>::stream(s, indent + "  ", v.Kp);
    s << indent << "Ki: ";
    Printer<double>::stream(s, indent + "  ", v.Ki);
    s << indent << "Kd: ";
    Printer<double>::stream(s, indent + "  ", v.Kd);
  }
};

} // namespace message_operations
} // namespace ros

#endif // STYX_MESSAGE_CHANGECONTROLPIDCOEFFREQUEST_H