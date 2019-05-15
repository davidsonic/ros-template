#! /usr/bin/env python

# service is server client synchronous
# request and response
# rosservice call /add_two_ints "a: 0 b: 5"

# rosservice list
# rosservice info


import rospy
from rospy_tutorials.srv import AddTwoInts

def handle_add_two_ints(req):
    result = req.a + req.b
    rospy.loginfo("sum of "+str(req.a) + " and " +str(req.b) +" is " + str(result))
    return result


if __name__=='__main__':
    rospy.init_node('add_two_int_server')
    rospy.loginfo('add two ints node created')

    service = rospy.Service('/add_two_ints', AddTwoInts, handle_add_two_ints)

    rospy.loginfo('server started')
    rospy.spin()