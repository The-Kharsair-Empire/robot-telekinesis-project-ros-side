// Generated by gencpp from file ur3_robotics/UR3ServiceMsg.msg
// DO NOT EDIT!


#ifndef UR3_ROBOTICS_MESSAGE_UR3SERVICEMSG_H
#define UR3_ROBOTICS_MESSAGE_UR3SERVICEMSG_H

#include <ros/service_traits.h>


#include <ur3_robotics/UR3ServiceMsgRequest.h>
#include <ur3_robotics/UR3ServiceMsgResponse.h>


namespace ur3_robotics
{

struct UR3ServiceMsg
{

typedef UR3ServiceMsgRequest Request;
typedef UR3ServiceMsgResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct UR3ServiceMsg
} // namespace ur3_robotics


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ur3_robotics::UR3ServiceMsg > {
  static const char* value()
  {
    return "7ca54bd198e5048726b3fe77d5b5509c";
  }

  static const char* value(const ::ur3_robotics::UR3ServiceMsg&) { return value(); }
};

template<>
struct DataType< ::ur3_robotics::UR3ServiceMsg > {
  static const char* value()
  {
    return "ur3_robotics/UR3ServiceMsg";
  }

  static const char* value(const ::ur3_robotics::UR3ServiceMsg&) { return value(); }
};


// service_traits::MD5Sum< ::ur3_robotics::UR3ServiceMsgRequest> should match 
// service_traits::MD5Sum< ::ur3_robotics::UR3ServiceMsg > 
template<>
struct MD5Sum< ::ur3_robotics::UR3ServiceMsgRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ur3_robotics::UR3ServiceMsg >::value();
  }
  static const char* value(const ::ur3_robotics::UR3ServiceMsgRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ur3_robotics::UR3ServiceMsgRequest> should match 
// service_traits::DataType< ::ur3_robotics::UR3ServiceMsg > 
template<>
struct DataType< ::ur3_robotics::UR3ServiceMsgRequest>
{
  static const char* value()
  {
    return DataType< ::ur3_robotics::UR3ServiceMsg >::value();
  }
  static const char* value(const ::ur3_robotics::UR3ServiceMsgRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ur3_robotics::UR3ServiceMsgResponse> should match 
// service_traits::MD5Sum< ::ur3_robotics::UR3ServiceMsg > 
template<>
struct MD5Sum< ::ur3_robotics::UR3ServiceMsgResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ur3_robotics::UR3ServiceMsg >::value();
  }
  static const char* value(const ::ur3_robotics::UR3ServiceMsgResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ur3_robotics::UR3ServiceMsgResponse> should match 
// service_traits::DataType< ::ur3_robotics::UR3ServiceMsg > 
template<>
struct DataType< ::ur3_robotics::UR3ServiceMsgResponse>
{
  static const char* value()
  {
    return DataType< ::ur3_robotics::UR3ServiceMsg >::value();
  }
  static const char* value(const ::ur3_robotics::UR3ServiceMsgResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // UR3_ROBOTICS_MESSAGE_UR3SERVICEMSG_H