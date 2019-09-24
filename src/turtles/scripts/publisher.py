#!/usr/bin/env python
import rospy
from turtles.msg import Turtle
import random
import rospkg


def get_next_id():
    global id_counter
    id_counter += 1
    return id_counter

def random_quality():
    return random.randint(1, 10)

def random_name():
    global names, adjectives
    name = random.choice(names)
    adjective = random.choice(adjectives)
    return adjective + ' ' + name

def publisher():
    pub = rospy.Publisher('turtle_topic', Turtle, queue_size = 10)
    rospy.init_node('publisher', anonymous=True)
    rate = rospy.Rate(5)
    while not rospy.is_shutdown():
        turtle = Turtle(get_next_id(), random_name(), random_quality())
        rospy.loginfo('Sent turtle #%s with quality %s named %s' % (turtle.id, turtle.quality, turtle.name))
        pub.publish(turtle)
        rate.sleep()

id_counter = 0
path = rospkg.RosPack().get_path('turtles')
names = open(path + '/data/names.txt').read().splitlines()
adjectives = open(path + '/data/adjectives.txt').read().splitlines()
if __name__ == '__main__':
    try:
        publisher()
    except rospy.ROSInterruptException:
        pass