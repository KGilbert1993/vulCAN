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

def callback(data, Pub):
    if(data.data == '5'):
        Pub.publish('AWK');
        rospy.loginfo(rospy.get_caller_id()+' Received signal')

def listener():
    rospy.init_node('node2', anonymous=True)

    Pub = rospy.Publisher('CAN_BUS', String, queue_size=10)
    rospy.Subscriber('CAN_BUS', String, callback, Pub)

    rospy.spin()
        
if __name__ == '__main__':
    listener()
