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
using namespace std;

//This node is used to test writing individual letters using turtle_letters_srv and is not used in the assignment
int main(int argc, char **argv)
{
    ros::init(argc, argv, "turtle_letter_client");
    ros::NodeHandle n;
    ros::ServiceClient client = n.serviceClient<beginner_tutorials::turtle_letters>("turtle_letters");
    
    beginner_tutorials::turtle_letters srv;
    int x;
    int y;
    string color;
    char letter;


    cout<< "enter location x: ";
    cin >> x;
    cout<< "enter location y: ";
    cin >> y;
    cout<< "enter color (green or red): ";
    cin >> color;
    cout<< "enter letter (options are: t i l): ";
    cin >> letter;

    srv.request.location_x = x;
    srv.request.location_y = y;
    srv.request.color = color;
    srv.request.letter = letter;


    if (client.call(srv))
        cout<<"CALLED!"<<endl;
    else
        ROS_ERROR("Failed to exec turtle service");

    return 0;


}
