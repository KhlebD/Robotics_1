#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include "turtlesim/Pose.h"
#include "turtlesim/TeleportAbsolute.h"
#include "turtlesim/TeleportAbsoluteRequest.h"
#include "turtlesim/TeleportAbsoluteResponse.h"
#include "turtlesim/TeleportRelative.h"
#include "turtlesim/SetPen.h"
#include <sstream>
#include "beginner_tutorials/turtle_letters.h"
#include "beginner_tutorials/ReqMsg.h"
using namespace std;


ros::Publisher velocity_publisher;
ros::Publisher req_publisher;
ros::ServiceClient abs_tele_client;
ros::ServiceClient rel_tele_client;
ros::ServiceClient pen_client;

void move();
void rotate(double angle);
void teleportAbs(int x, int y);
void teleportRel(double x, double y);
void changeColor(int r, int g, int b);
double degrees2radians(double angle_in_degrees);
void letterPrint(int location_x, int location_y, string color, char letter);

const double PI = 3.1415;
int i = 1;


bool callback(beginner_tutorials::turtle_letters::Request &req, beginner_tutorials::turtle_letters::Response &res)
{
    letterPrint(req.location_x, req.location_y, req.color, req.letter);
    res.result = "Moved Succesfully";
    beginner_tutorials::ReqMsg msg;
    
    //create message for history service:
    msg.info = "Request number: " + to_string(i) + " | Location: ";
    msg.info = msg.info + to_string(req.location_x) + "," + to_string(req.location_y) + " | Color: " + req.color + " | Letter: ";
    msg.info.push_back(req.letter);
    msg.info.push_back('\n');

    req_publisher.publish(msg);

    i++;
    return true;
}

int main(int argc, char **argv)
{
    cout << "Turlte Letter Writer!\n";
    ros::init(argc, argv, "turtle_letters_server");
    ros::NodeHandle n;
    
    velocity_publisher = n.advertise < geometry_msgs::Twist > ("/turtle1/cmd_vel", 1000);
    req_publisher = n.advertise < beginner_tutorials::ReqMsg > ("/received_requests", 1000);

    abs_tele_client = n.serviceClient< turtlesim::TeleportAbsolute >("/turtle1/teleport_absolute");
    rel_tele_client = n.serviceClient< turtlesim::TeleportRelative >("/turtle1/teleport_relative");
    pen_client = n.serviceClient< turtlesim::SetPen >("/turtle1/set_pen");

    ros::ServiceServer service = n.advertiseService("turtle_letters", callback);


    ros::spin();
}

void move()
{
    geometry_msgs::Twist vel_msg;
    vel_msg.linear.x = 0;
    vel_msg.linear.y = 0;
	vel_msg.linear.z = 0 ;
	
	vel_msg.angular.x = 0;
	vel_msg.angular.y = 0;
	vel_msg.angular.z = 0;
    
    ros::Rate loop_rate(5);
    int i;
    for (i = 0; i < 3; i++)
    {
        vel_msg.linear.x = 2;
	    velocity_publisher.publish(vel_msg);
        ros::spinOnce();
		loop_rate.sleep();
    }
}

void rotate(double angle)
{
    geometry_msgs::Twist vel_msg;
    vel_msg.linear.x = 0;
    vel_msg.linear.y = 0;
	vel_msg.linear.z = 0 ;
	
	vel_msg.angular.x = 0;
	vel_msg.angular.y = 0;
	vel_msg.angular.z = degrees2radians(angle);
    velocity_publisher.publish(vel_msg);
    ros::spinOnce();
}

void teleportAbs(int x, int y)
{
    turtlesim::TeleportAbsolute srv;
    srv.request.x = x;
    srv.request.y = y;
    srv.request.theta = 0;

    if (abs_tele_client.call(srv))
        ros::spinOnce();
    else
        cout << "Failed ABS\n";
}

void teleportRel(double x, double y)
{
    turtlesim::TeleportRelative srv;
    srv.request.linear = x;
    srv.request.angular = y;

    if (rel_tele_client.call(srv))
        ros::spinOnce();

    else
        cout << "Failed REL\n";
}

void changeColor(int r, int g, int b)
{
    turtlesim::SetPen srv2;
    srv2.request.r = r;
    srv2.request.g = g;
    srv2.request.b = b;
    srv2.request.width = 5;    
    if (pen_client.call(srv2))
        ros::spinOnce();
    else
        cout << "Failed COLOR\n";
}

void letterPrint(int location_x, int location_y, string color, char letter)
{
    //step 0(cheat): make pen invisible
    changeColor(69, 86, 255);
    //step 1: teleport to location
    teleportAbs(location_x, location_y);
    changeColor(255, 86, 69);

    //step 2: change to selected color
    if(color.compare("green"))
        changeColor(255, 0, 0);
    else if (color.compare("red"))
        changeColor(0, 255, 0);
    else
    {
        cout<<"Wrong color selected";
        return;
    }

    //step 3: move according to letter
    //rotate -90 degrees and move forward
    if(letter == 'i' || letter == 'I')
    {
        rotate(-90);
        sleep(2);
        move();
    }

    else if(letter == 'l' || letter == 'L')
    {
        rotate(-90);
        sleep(2);
        move();
        sleep(3);
        rotate(90);
        sleep(3);
        move();
    }

    else if(letter == 't' || letter == 'T')
    {
        sleep(2);
        move();
        sleep(2);
        teleportRel(-1.5,0);
        rotate(-90);
        sleep(3);
        move();
    }
    else 
    {    
        cout<< "Wrong letter selected";
        return;
    }
}

double degrees2radians(double angle_in_degrees)
{
	return angle_in_degrees *PI /180.0;
}