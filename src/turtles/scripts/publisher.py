#!/usr/bin/env python
import rospy
from std_msgs.msg import String

def publisher():
    pub = rospy.Publisher('turtle_topic', String, queue_size = 10)
    rospy.init_node('publisher', anonymous=True)
    rate = rospy.Rate(5)
    while not rospy.is_shutdown():
        message_str = 'hello world at %s' % rospy.get_time()
        rospy.loginfo(message_str)
        pub.publish(message_str)
        rate.sleep()

if __name__ == '__main__':
    try:
        publisher()
    except rospy.ROSInterruptException:
        pass