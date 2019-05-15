#! /usr/bin/env python

import rospy
from my_robot_msgs.srv import SetLed

def set_led(battery):
    rospy.wait_for_service('/set_led')
    try:
        service = rospy.ServiceProxy('/set_led', SetLed)
        state =0
        res=True
        if battery=='empty':
            state=1
            res =service(3, state)
        else:
            state =0
            res = service(3, state)
        rospy.loginfo('Success: '+str(res))
    except rospy.ServiceException as e:
        rospy.logerr(e)



if __name__=='__main__':
    rospy.init_node('batter_node')
    rospy.wait_for_service('/set_led')

    battery_state ='full'

    while not rospy.is_shutdown():
        rospy.sleep(7)
        battery_state='empty'
        rospy.loginfo('battery is empty')
        set_led(battery_state)
        rospy.sleep(3)
        battery_state='full'
        rospy.loginfo('battery is full')
        set_led(battery_state)



