#!/usr/bin/env python

class frame:
    msg_id = 0
    remote_request = 0
    DLC = 0
    data = 0
    CRC_seq = 0
    ACK = 0

    def __init__(self):
        self.data = 0

    def __init__(self, data)
        self.msg_id = (data & 0x    

class node:
    ids = []

    def __init__(self, msg_ids):
        self.ids = msg_ids

class can_bus:
    BUS = frame()
    nodes = []
     
    def __init__(self):
        BUS = 0        

    def send(self, msg):
        self.BUS = msg

    def display(self):
        print self.BUS	
