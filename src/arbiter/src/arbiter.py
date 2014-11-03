#!/usr/bin/env python
#########################################################################
## CAN Bus Arbiter Node
#
## Kevin Gilbert
#  2 November 2014
#  vulCAN
##
#  Controller Area Networks utilize a hardware arbiter implementation
#       where each node writes concurrently to the bus through logic
#       gates. Signals driven high (logic low) will stay high when a
#       logic high (low voltage) signal is trying to drive the bus.
#       Since lower valued message IDs are higher priority, this lets
#       high priority signals assume control of the bus. This is 
#       difficult to implement in directly within the ROS framework,
#       so to emulate the basic functionality of CAN an arbiter node will
#       query each control node for their message ID and provide the bus
#       grant signal to the highest priority node.
#########################################################################

import sys
import can_lib

import rospy
import random
from std_msgs.msg import String
from arbiter.msg import frame

def callback(data, pub):
    print data.msg_id
    
def talker():
    pub = rospy.Publisher('chatter', frame, queue_size=10)
    rospy.Subscriber('chatter', frame, callback, pub)
    rospy.init_node('talker', anonymous=True)
    r = rospy.Rate(10) # 10hz
    while not rospy.is_shutdown():
        pub.publish(0x10, 0, 1, [0x01], 0x00, 0)
        r.sleep()
        
if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException: pass
