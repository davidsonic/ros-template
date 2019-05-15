#! /usr/bin/env python

import rospy
from my_robot_msgs.srv import SetLed

led_states = [0,0,0]
def handle_set_led(req):
    led_num = req.num
    state = req.state

    global led_states
    if led_num > len(led_states) or led_num<=0:
        return False

    if not (state == 0 or state ==1):
        return False

    led_states[led_num-1] = state

    return True


if __name__=='__main__':
    rospy.init_node('LED_panel_node')

    rospy.loginfo('LED panel node started')

    service = rospy.Service('/set_led', SetLed, handle_set_led)

    rate = rospy.Rate(10)
    while not rospy.is_shutdown():
        rospy.loginfo(led_states)
        rate.sleep()
