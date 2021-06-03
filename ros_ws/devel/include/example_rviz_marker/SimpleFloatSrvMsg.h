// Generated by gencpp from file example_rviz_marker/SimpleFloatSrvMsg.msg
// DO NOT EDIT!


#ifndef EXAMPLE_RVIZ_MARKER_MESSAGE_SIMPLEFLOATSRVMSG_H
#define EXAMPLE_RVIZ_MARKER_MESSAGE_SIMPLEFLOATSRVMSG_H

#include <ros/service_traits.h>


#include <example_rviz_marker/SimpleFloatSrvMsgRequest.h>
#include <example_rviz_marker/SimpleFloatSrvMsgResponse.h>


namespace example_rviz_marker
{

struct SimpleFloatSrvMsg
{

typedef SimpleFloatSrvMsgRequest Request;
typedef SimpleFloatSrvMsgResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SimpleFloatSrvMsg
} // namespace example_rviz_marker


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::example_rviz_marker::SimpleFloatSrvMsg > {
  static const char* value()
  {
    return "977b20eb68513f2dcfa12a9673ec2ddd";
  }

  static const char* value(const ::example_rviz_marker::SimpleFloatSrvMsg&) { return value(); }
};

template<>
struct DataType< ::example_rviz_marker::SimpleFloatSrvMsg > {
  static const char* value()
  {
    return "example_rviz_marker/SimpleFloatSrvMsg";
  }

  static const char* value(const ::example_rviz_marker::SimpleFloatSrvMsg&) { return value(); }
};


// service_traits::MD5Sum< ::example_rviz_marker::SimpleFloatSrvMsgRequest> should match
// service_traits::MD5Sum< ::example_rviz_marker::SimpleFloatSrvMsg >
template<>
struct MD5Sum< ::example_rviz_marker::SimpleFloatSrvMsgRequest>
{
  static const char* value()
  {
    return MD5Sum< ::example_rviz_marker::SimpleFloatSrvMsg >::value();
  }
  static const char* value(const ::example_rviz_marker::SimpleFloatSrvMsgRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::example_rviz_marker::SimpleFloatSrvMsgRequest> should match
// service_traits::DataType< ::example_rviz_marker::SimpleFloatSrvMsg >
template<>
struct DataType< ::example_rviz_marker::SimpleFloatSrvMsgRequest>
{
  static const char* value()
  {
    return DataType< ::example_rviz_marker::SimpleFloatSrvMsg >::value();
  }
  static const char* value(const ::example_rviz_marker::SimpleFloatSrvMsgRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::example_rviz_marker::SimpleFloatSrvMsgResponse> should match
// service_traits::MD5Sum< ::example_rviz_marker::SimpleFloatSrvMsg >
template<>
struct MD5Sum< ::example_rviz_marker::SimpleFloatSrvMsgResponse>
{
  static const char* value()
  {
    return MD5Sum< ::example_rviz_marker::SimpleFloatSrvMsg >::value();
  }
  static const char* value(const ::example_rviz_marker::SimpleFloatSrvMsgResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::example_rviz_marker::SimpleFloatSrvMsgResponse> should match
// service_traits::DataType< ::example_rviz_marker::SimpleFloatSrvMsg >
template<>
struct DataType< ::example_rviz_marker::SimpleFloatSrvMsgResponse>
{
  static const char* value()
  {
    return DataType< ::example_rviz_marker::SimpleFloatSrvMsg >::value();
  }
  static const char* value(const ::example_rviz_marker::SimpleFloatSrvMsgResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // EXAMPLE_RVIZ_MARKER_MESSAGE_SIMPLEFLOATSRVMSG_H