#!/usr/bin/env python
#########################################################################
## CAN Sample Node
#
## Kevin Gilbert
#  2 November 2014
#  vulCAN
##
#  Sample CAN node
#########################################################################

import rospy
from std_msgs.msg import String
from frame_msg.msg import frame

def callback(data, Pub):
    if data.msg_id is 0x10:
        Pub.publish(0x00, 0, 1, [0], 0, 0)

def listener():
    rospy.init_node('node2', anonymous=True)

    Pub = rospy.Publisher('CAN_BUS', frame, queue_size=10)
    rospy.Subscriber('CAN_BUS', frame, callback, Pub)

    rospy.spin()
        
if __name__ == '__main__':
    listener()
