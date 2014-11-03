/* Auto-generated by genmsg_cpp for file /home/seed/Documents/cansim_ros_workspace/src/arbiter/msg/frame.msg */
#ifndef ARBITER_MESSAGE_FRAME_H
#define ARBITER_MESSAGE_FRAME_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"


namespace arbiter
{
template <class ContainerAllocator>
struct frame_ {
  typedef frame_<ContainerAllocator> Type;

  frame_()
  : msg_id(0)
  , remote_request(false)
  , DLC(0)
  , data()
  , CRC_seq(0)
  , ACK(false)
  {
  }

  frame_(const ContainerAllocator& _alloc)
  : msg_id(0)
  , remote_request(false)
  , DLC(0)
  , data(_alloc)
  , CRC_seq(0)
  , ACK(false)
  {
  }

  typedef int32_t _msg_id_type;
  int32_t msg_id;

  typedef uint8_t _remote_request_type;
  uint8_t remote_request;

  typedef int8_t _DLC_type;
  int8_t DLC;

  typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _data_type;
  std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  data;

  typedef int32_t _CRC_seq_type;
  int32_t CRC_seq;

  typedef uint8_t _ACK_type;
  uint8_t ACK;


  typedef boost::shared_ptr< ::arbiter::frame_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arbiter::frame_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct frame
typedef  ::arbiter::frame_<std::allocator<void> > frame;

typedef boost::shared_ptr< ::arbiter::frame> framePtr;
typedef boost::shared_ptr< ::arbiter::frame const> frameConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::arbiter::frame_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::arbiter::frame_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace arbiter

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::arbiter::frame_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::arbiter::frame_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::arbiter::frame_<ContainerAllocator> > {
  static const char* value() 
  {
    return "d76cf64e7d0d3743e5324ff510752d0f";
  }

  static const char* value(const  ::arbiter::frame_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xd76cf64e7d0d3743ULL;
  static const uint64_t static_value2 = 0xe5324ff510752d0fULL;
};

template<class ContainerAllocator>
struct DataType< ::arbiter::frame_<ContainerAllocator> > {
  static const char* value() 
  {
    return "arbiter/frame";
  }

  static const char* value(const  ::arbiter::frame_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::arbiter::frame_<ContainerAllocator> > {
  static const char* value() 
  {
    return "int32 msg_id\n\
bool remote_request\n\
int8 DLC\n\
uint8[] data\n\
int32 CRC_seq\n\
bool ACK\n\
\n\
";
  }

  static const char* value(const  ::arbiter::frame_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::arbiter::frame_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.msg_id);
    stream.next(m.remote_request);
    stream.next(m.DLC);
    stream.next(m.data);
    stream.next(m.CRC_seq);
    stream.next(m.ACK);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct frame_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arbiter::frame_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::arbiter::frame_<ContainerAllocator> & v) 
  {
    s << indent << "msg_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.msg_id);
    s << indent << "remote_request: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.remote_request);
    s << indent << "DLC: ";
    Printer<int8_t>::stream(s, indent + "  ", v.DLC);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.data[i]);
    }
    s << indent << "CRC_seq: ";
    Printer<int32_t>::stream(s, indent + "  ", v.CRC_seq);
    s << indent << "ACK: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ACK);
  }
};


} // namespace message_operations
} // namespace ros

#endif // ARBITER_MESSAGE_FRAME_H

