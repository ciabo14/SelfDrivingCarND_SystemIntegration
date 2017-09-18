// Generated by gencpp from file styx_msgs/ChangeTargetSpeed.msg
// DO NOT EDIT!


#ifndef STYX_MSGS_MESSAGE_CHANGETARGETSPEED_H
#define STYX_MSGS_MESSAGE_CHANGETARGETSPEED_H

#include <ros/service_traits.h>


#include <styx_msgs/ChangeTargetSpeedRequest.h>
#include <styx_msgs/ChangeTargetSpeedResponse.h>


namespace styx_msgs
{

struct ChangeTargetSpeed
{

typedef ChangeTargetSpeedRequest Request;
typedef ChangeTargetSpeedResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ChangeTargetSpeed
} // namespace styx_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::styx_msgs::ChangeTargetSpeed > {
  static const char* value()
  {
    return "fea0a386a47268810258a0f8d07589cc";
  }

  static const char* value(const ::styx_msgs::ChangeTargetSpeed&) { return value(); }
};

template<>
struct DataType< ::styx_msgs::ChangeTargetSpeed > {
  static const char* value()
  {
    return "styx_msgs/ChangeTargetSpeed";
  }

  static const char* value(const ::styx_msgs::ChangeTargetSpeed&) { return value(); }
};


// service_traits::MD5Sum< ::styx_msgs::ChangeTargetSpeedRequest> should match 
// service_traits::MD5Sum< ::styx_msgs::ChangeTargetSpeed > 
template<>
struct MD5Sum< ::styx_msgs::ChangeTargetSpeedRequest>
{
  static const char* value()
  {
    return MD5Sum< ::styx_msgs::ChangeTargetSpeed >::value();
  }
  static const char* value(const ::styx_msgs::ChangeTargetSpeedRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::styx_msgs::ChangeTargetSpeedRequest> should match 
// service_traits::DataType< ::styx_msgs::ChangeTargetSpeed > 
template<>
struct DataType< ::styx_msgs::ChangeTargetSpeedRequest>
{
  static const char* value()
  {
    return DataType< ::styx_msgs::ChangeTargetSpeed >::value();
  }
  static const char* value(const ::styx_msgs::ChangeTargetSpeedRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::styx_msgs::ChangeTargetSpeedResponse> should match 
// service_traits::MD5Sum< ::styx_msgs::ChangeTargetSpeed > 
template<>
struct MD5Sum< ::styx_msgs::ChangeTargetSpeedResponse>
{
  static const char* value()
  {
    return MD5Sum< ::styx_msgs::ChangeTargetSpeed >::value();
  }
  static const char* value(const ::styx_msgs::ChangeTargetSpeedResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::styx_msgs::ChangeTargetSpeedResponse> should match 
// service_traits::DataType< ::styx_msgs::ChangeTargetSpeed > 
template<>
struct DataType< ::styx_msgs::ChangeTargetSpeedResponse>
{
  static const char* value()
  {
    return DataType< ::styx_msgs::ChangeTargetSpeed >::value();
  }
  static const char* value(const ::styx_msgs::ChangeTargetSpeedResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // STYX_MSGS_MESSAGE_CHANGETARGETSPEED_H