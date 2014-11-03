#!/usr/bin/env python

from can_lib.CAN import *

x = can_bus()
x.send(10)
x.display()
