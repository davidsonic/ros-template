#! /usr/bin/env python

# rostopic pub -1 /robot_news_radio std_msgs/String "good"

import rospy
from std_msgs.msg import String


def callback_receive_radio_data(msg):
    rospy.loginfo("message received: ")
    rospy.loginfo(msg)

if __name__=='__main__':
    rospy.init_node('smartphone')

    sub = rospy.Subscriber('/robot_news_radio', String, callback_receive_radio_data)

    rospy.spin()
