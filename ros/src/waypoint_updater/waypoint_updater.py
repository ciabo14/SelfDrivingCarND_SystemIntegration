#!/usr/bin/env python

import rospy
from geometry_msgs.msg import PoseStamped
from styx_msgs.msg import Lane, Waypoint
import sys
import math
from track import *
from vehicle import *

'''
This node will publish waypoints from the car's current position to some `x` distance ahead.

As mentioned in the doc, you should ideally first implement a version which does not care
about traffic lights or obstacles.

Once you have created dbw_node, you will update this node to use the status of traffic lights too.

Please note that our simulator also provides the exact location of traffic lights and their
current status in `/vehicle/traffic_lights` message. You can use this message to build this node
as well as to verify your TL classifier.

TODO (for Yousuf and Aaron): Stopline location for each traffic light.
'''

LOOKAHEAD_WPS = 200 # Number of waypoints we will publish. You can change this number
LOOKBACK_WPS = 100 # Number of waypoints will be checked to find the close wp to the current position

class WaypointUpdater(object):
	def __init__(self):
		rospy.init_node('waypoint_updater')

		rospy.Subscriber('/current_pose', PoseStamped, self.pose_cb)
		rospy.Subscriber('/base_waypoints', Lane, self.waypoints_cb)

		# TODO: Add a subscriber for /traffic_waypoint and /obstacle_waypoint below

		#rospy.Subscriber('/traffic_waypoint', Lane, self.traffic_cb)
		#rospy.Subscriber('/obstacle_waypoint', , self.obstacle_cb)

		self.final_waypoints_pub = rospy.Publisher('final_waypoints', Lane, queue_size=1)

		# TODO: Add other member variables you need below
		self.track = None
		self.vehicle = None
		self.last_wp_index = -1

		rospy.spin()

	def pose_cb(self, msg):
		print("Reading current car pose",msg.pose.position.x,msg.pose.position.y)
		if(self.vehicle == None):
			print("Creating Vehicle")
			self.vehicle = Vehicle(msg.pose.position)
		else:
			print("Update vehicle position")
			self.vehicle.update_vehicle_pos(msg.pose.position)
		if(self.track != None and len(self.track.waypoints) > 0):
			print("Computing new wps")
			# Define and initialize the Lane message to be sent back to the final_waypoints topic
			lane = Lane()
			lane.header.stamp = rospy.Time().now()
			# lane.header.frame_id = "/world"
			self.compute_next_wps(lane)
			print("LANE WPS LENGHT: ", len(lane.waypoints))
			print("WP speed: ", lane.waypoints[0].twist.twist.linear.x)
			self.final_waypoints_pub.publish(lane)

	def waypoints_cb(self, waypoints):

		if(self.track == None):
			self.track = Track(waypoints.waypoints)
			print("Track Creation",len(self.track.waypoints))
		# Defined to update the waypoints in case some messages arrives before the simulatro was started
		elif(len(waypoints.waypoints) != len(self.track.waypoints)):
			self.track.waypoints = waypoints.waypoints
			print("Track already created",len(self.track.waypoints))

	def compute_next_wps(self,lane):
		next_wps = []
		
		if(self.last_wp_index == -1):
			print("Look throw all the wps")
			self.last_wp_index = self.compute_close_wp()
		else:
			min_index = (self.last_wp_index - LOOKBACK_WPS) % len(self.track.waypoints)
			max_index = (self.last_wp_index + LOOKAHEAD_WPS) % len(self.track.waypoints)
			print("Look throw indexs: ",min_index, max_index)
			self.last_wp_index = self.compute_close_wp_range(min_index,max_index)
		
		print("Closest wp index: ",self.last_wp_index)
		# Add all the LOOKAHEAD_WPS waypoints to the Lane message to be sent back
		for i in range(1,LOOKAHEAD_WPS):
			wp = self.track.waypoints[(self.last_wp_index+i) % len(self.track.waypoints)]
			# set longitudinal speed
			wp.twist.twist.linear.x = 10
			self.vehicle.update_vehicle_speed(10)
			lane.waypoints.append(wp)
			
	

	################################# TODO: 
	# Compute the closest waypoints to the current car position among all the waypoints
	# This function is called at the first pose received and when the closest waypoint found is too far away
	#################################
	def compute_close_wp(self):
		nearest_wp_index, nearest_distance = self.compute_close_wp_data(0,len(self.track.waypoints))
		return nearest_wp_index
			
	################################# TODO: 
	# Compute the closest waypoints to the current car position a range of waypoints close to the last 
	# choosen index
	#################################
	def compute_close_wp_range(self,min_index,max_index):
		if(min_index < max_index):
	
			nearest_wp_index, nearest_distance = self.compute_close_wp_data(min_index,max_index)
			return nearest_wp_index
		else:
			nearest_wp_index1, nearest_distance1 = self.compute_close_wp_data(min_index,len(self.track.waypoints))
			nearest_wp_index2, nearest_distance2 = self.compute_close_wp_data(0,max_index)
			if nearest_distance1 >= nearest_distance2:
				return nearest_wp_index1
			return nearest_wp_index2

	################################# TODO: 
	# Compute the closest waypoints to the current car in a range of waypoints [min_index,max_index]
	# 
	#################################
	def compute_close_wp_data(self,min_index,max_index):
		nearest_wp_index = 0
		nearest_distance = 1000000
		for i in range(min_index,max_index):

			q = self.track.waypoints[i].pose.pose.position
			dist = math.sqrt((self.vehicle.pos_x-q.x)**2 + (self.vehicle.pos_y-q.y)**2 + (self.vehicle.pos_z-q.z)**2)
			if dist < nearest_distance:
				nearest_wp_index = i
				nearest_distance = dist
		return nearest_wp_index,nearest_distance

	def traffic_cb(self, msg):
		# TODO: Callback for /traffic_waypoint message. Implement
		pass

	def obstacle_cb(self, msg):
		# TODO: Callback for /obstacle_waypoint message. We will implement it later
		pass

	def get_waypoint_velocity(self, waypoint):
		return waypoint.twist.twist.linear.x

	def set_waypoint_velocity(self, waypoints, waypoint, velocity):
		waypoints[waypoint].twist.twist.linear.x = velocity

	def distance(self, waypoints, wp1, wp2):
		dist = 0
		dl = lambda a, b: math.sqrt((a.x-b.x)**2 + (a.y-b.y)**2  + (a.z-b.z)**2)
		for i in range(wp1, wp2+1):
			dist += dl(waypoints[wp1].pose.pose.position, waypoints[i].pose.pose.position)
			wp1 = i
		return dist


if __name__ == '__main__':
	try:
		WaypointUpdater()
	except rospy.ROSInterruptException:
		rospy.logerr('Could not start waypoint updater node.')
