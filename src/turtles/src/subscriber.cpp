/*
 *--**--..--**--..--**--..--**--..--**--..--**--..--**--..--**--..--**--
 * Subscriber which gets the turtles and filters the finest turtles
 *
 * Author: Daniel Jacks
 *
 * Date last updated: 24/09/2019 by Daniel Jacks
 * 
 * purpose: A ROS node that can receieve the turtles and print the best ones
 * 
 * Usage: Run a publisher node and this will print the best generated turtles automatically
 * 
 * Subscribed topic/s: 
 *     turtle_topic
 *
 *--..--**--..--**--..--**--..--**--..--**--..--**--..--**--..--**--..--
 */

#include "ros/ros.h"
#include "turtles/Turtle.h"


void filterTurtleCallback(const turtles::Turtle::ConstPtr& turtle) {
    if (turtle->quality >= 7) { // only the finest turtles can pass
        // print some turtle info to the console
        ROS_INFO("Cool turtle:\n#%d \nquality: %d \nname:    %s", turtle->id, turtle->quality, turtle->name.c_str());
    }
}

int main(int argc, char **argv) {
    // initialize our subscriber node
    ros::init(argc, argv, "turtle_filter");
    ros::NodeHandle n;
    ros::Subscriber turtle_filter_subscriber = n.subscribe("turtles/turtle_topic", 1000, subscriberCallback);
    // run the node
    ros::spin();
    return 0;
}
