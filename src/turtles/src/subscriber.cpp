#include "ros/ros.h"
#include "turtles/Turtle.h"

void subscriberCallback(const turtles::Turtle::ConstPtr& msg) {
    ROS_INFO("I heard: [%s]", msg->name.c_str());
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "subscriber");
    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("turtle_topic", 1000, subscriberCallback);
    ros::spin();
    return 0;
}