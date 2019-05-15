#! /usr/bin/env python

import rospy
from std_msgs.msg import Int64
# Need to modify CMakelist.txt and package.xml
# sudo apt-get install ros-kinetic-std-srvs
from std_srvs.srv import SetBool


counter =0
pub = None

def callback_number_counter(msg):
    global counter
    counter +=msg.data

    new_msg = Int64()
    new_msg.data = counter
    pub.publish(new_msg)


def handle_set_bool(req):
    global counter
    if req.data:
        counter =0
        success =True
        message='success message'
        return success, message
    else:
        return False, 'disable message'



if __name__=='__main__':
    rospy.init_node('number_counter')

    sub = rospy.Subscriber('/number', Int64, callback_number_counter)
    pub = rospy.Publisher('/number_count', Int64, queue_size=10)

    service = rospy.Service('/reset_number_count', SetBool, handle_set_bool)
    rospy.loginfo('reset number count server started')


    rospy.spin()

