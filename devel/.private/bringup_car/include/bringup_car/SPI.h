// Generated by gencpp from file bringup_car/SPI.msg
// DO NOT EDIT!


#ifndef BRINGUP_CAR_MESSAGE_SPI_H
#define BRINGUP_CAR_MESSAGE_SPI_H

#include <ros/service_traits.h>


#include <bringup_car/SPIRequest.h>
#include <bringup_car/SPIResponse.h>


namespace bringup_car
{

struct SPI
{

typedef SPIRequest Request;
typedef SPIResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SPI
} // namespace bringup_car


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::bringup_car::SPI > {
  static const char* value()
  {
    return "e04010cc40eb2ab4db306dc8c290e92b";
  }

  static const char* value(const ::bringup_car::SPI&) { return value(); }
};

template<>
struct DataType< ::bringup_car::SPI > {
  static const char* value()
  {
    return "bringup_car/SPI";
  }

  static const char* value(const ::bringup_car::SPI&) { return value(); }
};


// service_traits::MD5Sum< ::bringup_car::SPIRequest> should match
// service_traits::MD5Sum< ::bringup_car::SPI >
template<>
struct MD5Sum< ::bringup_car::SPIRequest>
{
  static const char* value()
  {
    return MD5Sum< ::bringup_car::SPI >::value();
  }
  static const char* value(const ::bringup_car::SPIRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::bringup_car::SPIRequest> should match
// service_traits::DataType< ::bringup_car::SPI >
template<>
struct DataType< ::bringup_car::SPIRequest>
{
  static const char* value()
  {
    return DataType< ::bringup_car::SPI >::value();
  }
  static const char* value(const ::bringup_car::SPIRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::bringup_car::SPIResponse> should match
// service_traits::MD5Sum< ::bringup_car::SPI >
template<>
struct MD5Sum< ::bringup_car::SPIResponse>
{
  static const char* value()
  {
    return MD5Sum< ::bringup_car::SPI >::value();
  }
  static const char* value(const ::bringup_car::SPIResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::bringup_car::SPIResponse> should match
// service_traits::DataType< ::bringup_car::SPI >
template<>
struct DataType< ::bringup_car::SPIResponse>
{
  static const char* value()
  {
    return DataType< ::bringup_car::SPI >::value();
  }
  static const char* value(const ::bringup_car::SPIResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // BRINGUP_CAR_MESSAGE_SPI_H
