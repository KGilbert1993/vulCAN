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
    print data
    if data.msg_id is 0x001:
        if data.data is [0x11, 0xFF]:
            Pub.publish(0x7FF, 0, 2, [0x01,0x23], 0, 0)
        elif data.data is [0x22]:
            Pub.publish(0x123, 0, 3, [0,1,2], 0, 0)

def listener():
    rospy.init_node('node2', anonymous=True)

    Pub = rospy.Publisher('CAN_BUS_RX', frame, queue_size=10)
    rospy.Subscriber('CAN_BUS_TX', frame, callback, Pub)

    rospy.spin()
        
if __name__ == '__main__':
    listener()
