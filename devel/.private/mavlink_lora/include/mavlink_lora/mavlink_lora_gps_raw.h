// Generated by gencpp from file mavlink_lora/mavlink_lora_gps_raw.msg
// DO NOT EDIT!


#ifndef MAVLINK_LORA_MESSAGE_MAVLINK_LORA_GPS_RAW_H
#define MAVLINK_LORA_MESSAGE_MAVLINK_LORA_GPS_RAW_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace mavlink_lora
{
template <class ContainerAllocator>
struct mavlink_lora_gps_raw_
{
  typedef mavlink_lora_gps_raw_<ContainerAllocator> Type;

  mavlink_lora_gps_raw_()
    : time_usec(0)
    , fix_type(0)
    , lat(0.0)
    , lon(0.0)
    , alt(0.0)
    , eph(0)
    , epv(0)
    , vel(0.0)
    , cog(0.0)
    , satellites_visible(0)  {
    }
  mavlink_lora_gps_raw_(const ContainerAllocator& _alloc)
    : time_usec(0)
    , fix_type(0)
    , lat(0.0)
    , lon(0.0)
    , alt(0.0)
    , eph(0)
    , epv(0)
    , vel(0.0)
    , cog(0.0)
    , satellites_visible(0)  {
  (void)_alloc;
    }



   typedef uint64_t _time_usec_type;
  _time_usec_type time_usec;

   typedef uint8_t _fix_type_type;
  _fix_type_type fix_type;

   typedef double _lat_type;
  _lat_type lat;

   typedef double _lon_type;
  _lon_type lon;

   typedef double _alt_type;
  _alt_type alt;

   typedef uint16_t _eph_type;
  _eph_type eph;

   typedef uint16_t _epv_type;
  _epv_type epv;

   typedef double _vel_type;
  _vel_type vel;

   typedef double _cog_type;
  _cog_type cog;

   typedef uint8_t _satellites_visible_type;
  _satellites_visible_type satellites_visible;





  typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator> const> ConstPtr;

}; // struct mavlink_lora_gps_raw_

typedef ::mavlink_lora::mavlink_lora_gps_raw_<std::allocator<void> > mavlink_lora_gps_raw;

typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_gps_raw > mavlink_lora_gps_rawPtr;
typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_gps_raw const> mavlink_lora_gps_rawConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator1> & lhs, const ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator2> & rhs)
{
  return lhs.time_usec == rhs.time_usec &&
    lhs.fix_type == rhs.fix_type &&
    lhs.lat == rhs.lat &&
    lhs.lon == rhs.lon &&
    lhs.alt == rhs.alt &&
    lhs.eph == rhs.eph &&
    lhs.epv == rhs.epv &&
    lhs.vel == rhs.vel &&
    lhs.cog == rhs.cog &&
    lhs.satellites_visible == rhs.satellites_visible;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator1> & lhs, const ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mavlink_lora

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7afea41e45851f2ca34fca3f97c2d64d";
  }

  static const char* value(const ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7afea41e45851f2cULL;
  static const uint64_t static_value2 = 0xa34fca3f97c2d64dULL;
};

template<class ContainerAllocator>
struct DataType< ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mavlink_lora/mavlink_lora_gps_raw";
  }

  static const char* value(const ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint64 time_usec\n"
"uint8 fix_type\n"
"float64 lat\n"
"float64 lon\n"
"float64 alt\n"
"uint16 eph\n"
"uint16 epv\n"
"float64 vel\n"
"float64 cog\n"
"uint8 satellites_visible\n"
;
  }

  static const char* value(const ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time_usec);
      stream.next(m.fix_type);
      stream.next(m.lat);
      stream.next(m.lon);
      stream.next(m.alt);
      stream.next(m.eph);
      stream.next(m.epv);
      stream.next(m.vel);
      stream.next(m.cog);
      stream.next(m.satellites_visible);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct mavlink_lora_gps_raw_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mavlink_lora::mavlink_lora_gps_raw_<ContainerAllocator>& v)
  {
    s << indent << "time_usec: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.time_usec);
    s << indent << "fix_type: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.fix_type);
    s << indent << "lat: ";
    Printer<double>::stream(s, indent + "  ", v.lat);
    s << indent << "lon: ";
    Printer<double>::stream(s, indent + "  ", v.lon);
    s << indent << "alt: ";
    Printer<double>::stream(s, indent + "  ", v.alt);
    s << indent << "eph: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.eph);
    s << indent << "epv: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.epv);
    s << indent << "vel: ";
    Printer<double>::stream(s, indent + "  ", v.vel);
    s << indent << "cog: ";
    Printer<double>::stream(s, indent + "  ", v.cog);
    s << indent << "satellites_visible: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.satellites_visible);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAVLINK_LORA_MESSAGE_MAVLINK_LORA_GPS_RAW_H