#!/usr/bin/env python2
# use moveit_commander (the Python MoveIt user interfaces )

import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
import sys
import copy
from math import pi

class MoveGroupInteface(object):

    def __init__(self):
        super(MoveGroupInteface, self).__init__()
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node('ur_move_test_node', anonymous=True)
        self.robot = moveit_commander.RobotCommander()
        self.scene = moveit_commander.PlanningSceneInterface()  # Not used in this tutorial
        group_name = "manipulator"  # group_name can be find in ur5_moveit_config/config/ur5.srdf
        self.move_group_commander = moveit_commander.MoveGroupCommander(group_name)
        self.display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path',
                                                            moveit_msgs.msg.DisplayTrajectory, queue_size=20)


        ################ Getting Basic Information ######################
        self.planning_frame = self.move_group_commander.get_planning_frame()
        print "============ Planning frame: %s" % self.planning_frame
        self.eef_link = self.move_group_commander.get_end_effector_link()
        print "============ End effector link: %s" % self.eef_link
        self.group_names = self.robot.get_group_names()
        print "============ Available Planning Groups:", self.robot.get_group_names()
        print "============ Printing robot state:"
        print self.robot.get_current_state()  # get
        print ""

    def plan_cartesian_path(self, scale=1):
        waypoints = []
        wpose = self.move_group_commander.get_current_pose().pose
        wpose.position.z -= scale * 0.1  # First move up (z)
        waypoints.append(copy.deepcopy(wpose))
        wpose.position.x += scale * 0.1  # Second move forward/backwards in (x)
        waypoints.append(copy.deepcopy(wpose))
        wpose.position.y += scale * 0.1  # Third move sideways (y)
        waypoints.append(copy.deepcopy(wpose))

        (plan, fraction) = self.move_group_commander.compute_cartesian_path(
            waypoints,
            0.01,
            0.0)

        return plan, fraction

    def execute_plan(self, plan):

        self.move_group_commander.execute(plan, wait=True)



print "============ Press `Enter` to set up up the moveit_commander ..."
raw_input()
tutorial = MoveGroupInteface()
print "============ Press `Enter` to plan and display a Cartesian path ..."
raw_input()
cartesian_plan, fraction = tutorial.plan_cartesian_path()
print "============ Press `Enter` to execute the plan  ..."
raw_input()
tutorial.execute_plan(cartesian_plan)
print "============ Press `Enter` to go back ..."
raw_input()
cartesian_plan, fraction = tutorial.plan_cartesian_path(scale=-1)
tutorial.execute_plan(cartesian_plan)