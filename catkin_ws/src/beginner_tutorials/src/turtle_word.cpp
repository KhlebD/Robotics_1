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
#include "beginner_tutorials/turtle_history.h"
using namespace std;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "turtle_letter_client");
    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<beginner_tutorials::turtle_letters>("turtle_letters");
    ros::ServiceClient history_client = n.serviceClient<beginner_tutorials::turtle_history>("turtle_history");

    beginner_tutorials::turtle_letters srv;
    beginner_tutorials::turtle_history history_srv;

    srv.request.location_x = 1;
    srv.request.location_y = 6;
    srv.request.color = "red";
    srv.request.letter = 't';
    
    if (client.call(srv))
        ros::spinOnce();
    else
        ROS_ERROR("Failed to exec turtle service");

    srv.request.location_x = 5;
    srv.request.location_y = 6;
    srv.request.color = "green";
    srv.request.letter = 'i';
    
    sleep(2);

    if (client.call(srv))
        ros::spinOnce();
    else
        ROS_ERROR("Failed to exec turtle service");

    srv.request.location_x = 7;
    srv.request.location_y = 6;
    srv.request.color = "red";
    srv.request.letter = 'l';

    sleep(2);
    if (client.call(srv))
        ros::spinOnce();
    else
        ROS_ERROR("Failed to exec turtle service");

    if (history_client.call (history_srv))    
    {
        cout<< "History of requests:"<< endl;
        cout<< history_srv.response.result<< endl;
    }

    else
        ROS_ERROR("Failed to exec turtle histroy service");

    return 0;
}