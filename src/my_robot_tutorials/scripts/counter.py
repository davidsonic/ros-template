#! /usr/bin/env python

import rospy
from std_msgs.msg import Int64


def callback_number(msg):
    rospy.loginfo(msg.data)


if __name__=='__main__':
    rospy.init_node('counter')

    sub = rospy.Subscriber('/number_count', Int64, callback_number)


    rospy.spin()

