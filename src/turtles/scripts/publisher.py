#!/usr/bin/env python
import rospy
from turtles.msg import Turtle


def get_next_id():
    global id_counter
    id_counter += 1
    return id_counter

def publisher():
    pub = rospy.Publisher('turtle_topic', Turtle, queue_size = 10)
    rospy.init_node('publisher', anonymous=True)
    rate = rospy.Rate(5)
    while not rospy.is_shutdown():
        turtle = Turtle(get_next_id(), 'Turtle', 7)
        rospy.loginfo('Sent turtle %s with quality %s named %s' % (turtle.id, turtle.quality, turtle.name))
        pub.publish(turtle)
        rate.sleep()

id_counter = 0
if __name__ == '__main__':
    try:
        publisher()
    except rospy.ROSInterruptException:
        pass