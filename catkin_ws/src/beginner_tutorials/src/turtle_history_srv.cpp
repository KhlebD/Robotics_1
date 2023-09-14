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
#include "beginner_tutorials/ReqMsg.h"

using namespace std;
string all_msg;

void msgCallback(const beginner_tutorials::ReqMsg& msg)
{
    all_msg = all_msg + msg.info;
}

bool historyCallback(beginner_tutorials::turtle_history::Request &req, beginner_tutorials::turtle_history::Response &res)
{
    res.result = all_msg;
    return true;
}

int main(int argc, char **argv)
{
    cout<< "History Service"<< endl;
    ros::init(argc, argv, "turtle_letters_history_server");
    ros::NodeHandle n;

    all_msg = "";
    ros::Subscriber sub = n.subscribe("/received_requests", 1000, msgCallback);
    ros::ServiceServer service = n.advertiseService("turtle_history", historyCallback);

    ros::spin();
}