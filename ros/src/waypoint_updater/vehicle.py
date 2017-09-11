#!/usr/bin/env python

class Vehicle(object):

	def __init__(self, position):
		self.pos_x = 0
		self.pos_y = 0
		self.pos_z = 0
		self.speed_x = 0

		self.update_vehicle_pos(position)


	def update_vehicle_pos(self, position):

		self.pos_x = position.x
		self.pos_y = position.y
		self.pos_z = position.z

	def update_vehicle_speed(self, speed):
		self.speed_x = speed
