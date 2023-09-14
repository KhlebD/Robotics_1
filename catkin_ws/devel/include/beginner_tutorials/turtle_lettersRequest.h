// Generated by gencpp from file beginner_tutorials/turtle_lettersRequest.msg
// DO NOT EDIT!


#ifndef BEGINNER_TUTORIALS_MESSAGE_TURTLE_LETTERSREQUEST_H
#define BEGINNER_TUTORIALS_MESSAGE_TURTLE_LETTERSREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace beginner_tutorials
{
template <class ContainerAllocator>
struct turtle_lettersRequest_
{
  typedef turtle_lettersRequest_<ContainerAllocator> Type;

  turtle_lettersRequest_()
    : location_x(0)
    , location_y(0)
    , color()
    , letter(0)  {
    }
  turtle_lettersRequest_(const ContainerAllocator& _alloc)
    : location_x(0)
    , location_y(0)
    , color(_alloc)
    , letter(0)  {
  (void)_alloc;
    }



   typedef int64_t _location_x_type;
  _location_x_type location_x;

   typedef int64_t _location_y_type;
  _location_y_type location_y;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _color_type;
  _color_type color;

   typedef uint8_t _letter_type;
  _letter_type letter;





  typedef boost::shared_ptr< ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator> const> ConstPtr;

}; // struct turtle_lettersRequest_

typedef ::beginner_tutorials::turtle_lettersRequest_<std::allocator<void> > turtle_lettersRequest;

typedef boost::shared_ptr< ::beginner_tutorials::turtle_lettersRequest > turtle_lettersRequestPtr;
typedef boost::shared_ptr< ::beginner_tutorials::turtle_lettersRequest const> turtle_lettersRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator1> & lhs, const ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator2> & rhs)
{
  return lhs.location_x == rhs.location_x &&
    lhs.location_y == rhs.location_y &&
    lhs.color == rhs.color &&
    lhs.letter == rhs.letter;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator1> & lhs, const ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace beginner_tutorials

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ca26006222d06ee19db7f51f3eb5f1c5";
  }

  static const char* value(const ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xca26006222d06ee1ULL;
  static const uint64_t static_value2 = 0x9db7f51f3eb5f1c5ULL;
};

template<class ContainerAllocator>
struct DataType< ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "beginner_tutorials/turtle_lettersRequest";
  }

  static const char* value(const ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 location_x\n"
"int64 location_y\n"
"string color\n"
"char letter\n"
"\n"
;
  }

  static const char* value(const ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.location_x);
      stream.next(m.location_y);
      stream.next(m.color);
      stream.next(m.letter);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct turtle_lettersRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::beginner_tutorials::turtle_lettersRequest_<ContainerAllocator>& v)
  {
    s << indent << "location_x: ";
    Printer<int64_t>::stream(s, indent + "  ", v.location_x);
    s << indent << "location_y: ";
    Printer<int64_t>::stream(s, indent + "  ", v.location_y);
    s << indent << "color: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.color);
    s << indent << "letter: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.letter);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BEGINNER_TUTORIALS_MESSAGE_TURTLE_LETTERSREQUEST_H
