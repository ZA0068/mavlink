// Generated by gencpp from file mavlink_lora/mavlink_lora_pos.msg
// DO NOT EDIT!


#ifndef MAVLINK_LORA_MESSAGE_MAVLINK_LORA_POS_H
#define MAVLINK_LORA_MESSAGE_MAVLINK_LORA_POS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace mavlink_lora
{
template <class ContainerAllocator>
struct mavlink_lora_pos_
{
  typedef mavlink_lora_pos_<ContainerAllocator> Type;

  mavlink_lora_pos_()
    : header()
    , time_usec(0)
    , lat(0.0)
    , lon(0.0)
    , alt(0.0)
    , relative_alt(0.0)
    , heading(0.0)  {
    }
  mavlink_lora_pos_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , time_usec(0)
    , lat(0.0)
    , lon(0.0)
    , alt(0.0)
    , relative_alt(0.0)
    , heading(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint64_t _time_usec_type;
  _time_usec_type time_usec;

   typedef double _lat_type;
  _lat_type lat;

   typedef double _lon_type;
  _lon_type lon;

   typedef double _alt_type;
  _alt_type alt;

   typedef double _relative_alt_type;
  _relative_alt_type relative_alt;

   typedef double _heading_type;
  _heading_type heading;





  typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator> const> ConstPtr;

}; // struct mavlink_lora_pos_

typedef ::mavlink_lora::mavlink_lora_pos_<std::allocator<void> > mavlink_lora_pos;

typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_pos > mavlink_lora_posPtr;
typedef boost::shared_ptr< ::mavlink_lora::mavlink_lora_pos const> mavlink_lora_posConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator1> & lhs, const ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.time_usec == rhs.time_usec &&
    lhs.lat == rhs.lat &&
    lhs.lon == rhs.lon &&
    lhs.alt == rhs.alt &&
    lhs.relative_alt == rhs.relative_alt &&
    lhs.heading == rhs.heading;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator1> & lhs, const ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mavlink_lora

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8fdf615c46cfa7d653d288216d6b82a1";
  }

  static const char* value(const ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8fdf615c46cfa7d6ULL;
  static const uint64_t static_value2 = 0x53d288216d6b82a1ULL;
};

template<class ContainerAllocator>
struct DataType< ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mavlink_lora/mavlink_lora_pos";
  }

  static const char* value(const ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"uint64 time_usec\n"
"float64 lat\n"
"float64 lon\n"
"float64 alt\n"
"float64 relative_alt\n"
"float64 heading\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.time_usec);
      stream.next(m.lat);
      stream.next(m.lon);
      stream.next(m.alt);
      stream.next(m.relative_alt);
      stream.next(m.heading);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct mavlink_lora_pos_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mavlink_lora::mavlink_lora_pos_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "time_usec: ";
    Printer<uint64_t>::stream(s, indent + "  ", v.time_usec);
    s << indent << "lat: ";
    Printer<double>::stream(s, indent + "  ", v.lat);
    s << indent << "lon: ";
    Printer<double>::stream(s, indent + "  ", v.lon);
    s << indent << "alt: ";
    Printer<double>::stream(s, indent + "  ", v.alt);
    s << indent << "relative_alt: ";
    Printer<double>::stream(s, indent + "  ", v.relative_alt);
    s << indent << "heading: ";
    Printer<double>::stream(s, indent + "  ", v.heading);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAVLINK_LORA_MESSAGE_MAVLINK_LORA_POS_H
