#include "ros/ros.h"
#include "turtles/Turtle.h"

void subscriberCallback(const turtles::Turtle::ConstPtr& turtle) {
    if (turtle->quality >= 7) {
        ROS_INFO("Cool turtle:\n#%d \nquality: %d \nname:    %s", turtle->id, turtle->quality, turtle->name.c_str());
    }
}

int main(int argc, char **argv) {
    ros::init(argc, argv, "subscriber");
    ros::NodeHandle n;
    ros::Subscriber sub = n.subscribe("turtle_topic", 1000, subscriberCallback);
    ros::spin();
    return 0;
}