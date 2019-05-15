#! /usr/bin/env python
# topic is unidirectional

import rospy
from std_msgs.msg import Int64


if __name__=='__main__':
    rospy.init_node("number_publisher")

    pub = rospy.Publisher('/number', Int64, queue_size=10)

    # set parameter with python
    publish_freq = rospy.get_param('/number_publish_freq')
    number = rospy.get_param('/number_to_publish')
    rate = rospy.Rate(publish_freq)

    rospy.set_param('/another_param', 'hello')

    while not rospy.is_shutdown():
        msg = Int64()
        msg.data = number
        pub.publish(msg)
        rate.sleep()

    rospy.loginfo('Exit now')

