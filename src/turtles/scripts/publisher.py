#!/usr/bin/env python

"""
A publisher node that sends out generated turtles

Author: Daniel Jacks

Date last updated: 24/09/2019 by Daniel Jacks

Purpose: A ROS node to generate and send out random turtles.

Usage: subscribe to /turtles/turtle_topic and recieve 5 random Turtle messages every second

Published topic/s:
    /turtles/turtle_topic
"""


import rospy
from turtles.msg import Turtle
import random
import rospkg


def getNextID():
    '''Generate a unique turtle id by incrementing the previous id by one'''
    global id_counter
    id_counter += 1
    return id_counter

def randomQuality():
    '''Generate a random quality from 1-10 inclusive'''
    return random.randint(1, 10)

def randomName():
    '''Generate a random name of the form {firstName} {adjective}'''
    global names, adjectives
    # choose a random name and adjective from out txt lists
    name = random.choice(names)
    adjective = random.choice(adjectives)
    return adjective.capitalize() + ' ' + name.capitalize()

def generateTurtles():
    '''Send out 5 randomly generated turtles every second'''
    # declare a new publishing node and run it 5 times a second
    turtle_generator_publisher = rospy.Publisher('/turtles/turtle_topic', Turtle, queue_size = 10)
    rospy.init_node('turtle_generator', anonymous=True)
    rate = rospy.Rate(5)
    while not rospy.is_shutdown():
        # print and publish a randomly generated turtle
        turtle = Turtle(getNextID(), randomName(), randomQuality())
        rospy.loginfo('Sent turtle #%s with quality %s named %s' % (turtle.id, turtle.quality, turtle.name))
        turtle_generator_publisher.publish(turtle)
        rate.sleep()

id_counter = 0
path = rospkg.RosPack().get_path('turtles') # root directory of the turtles package
names = open(path + '/data/names.txt').read().splitlines() # one word per line txt file of first names
adjectives = open(path + '/data/adjectives.txt').read().splitlines() # one word per line txt file of adjectives

# run the node
if __name__ == '__main__':
    try:
        generateTurtles()
    except rospy.ROSInterruptException:
        pass
