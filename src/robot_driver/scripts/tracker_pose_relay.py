#!/usr/bin/env python


from __future__ import print_function

import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg as moveit_msg_lib
import std_msgs.msg as standard_mag_lib
import geometry_msgs.msg as geometry_msg_lib
from math import pi
from math import radians
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list

from ur3_robotics.msg import UR3Joints

robot_model = "UR3"

robot, scene, move_group, display_trajectory_publisher, planning_frame, eef_link, group_names = None, None, None, None, None, None, None

move_plan_publisher = None

def setup_robot(info, **kwargs):

    global robot, scene, move_group, display_trajectory_publisher, planning_frame, eef_link, group_names
    moveit_commander.roscpp_initialize(sys.argv)
    #rospy.init_node('ur3_main_node', anonymous=True)
    robot = moveit_commander.RobotCommander()
    scene = moveit_commander.PlanningSceneInterface()
    group_name = kwargs.get('movegroup', 'manipulator')
    move_group = moveit_commander.MoveGroupCommander(group_name)
    display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path'
                                                   , moveit_msg_lib.DisplayTrajectory
                                                   , queue_size=20)

    planning_frame = move_group.get_planning_frame()
    eef_link = move_group.get_end_effector_link()
    group_names = robot.get_group_names()

    if info:
        print('==== Reference frame: {}'.format(planning_frame))
        print('==== End effector ==: {}'.format(eef_link))
        print('==== Robot groups ==: {}'.format(group_names))
        print('==== Robot state ===: {}'.format(robot.get_current_state()))


def go_to_pose_goal(data):
    if info:
        print('=======goal position: {}'.format(data.position))
        print('====goal orientation: {}'.format(data.orientation))

    move_group.set_pose_target(data)
    move_group.go(wait=True)

    plan = move_group.plan()
    move_group.stop()
    move_group.clear_pose_targets()

    if info:
        print('==== The Planner returns plan of {}'.format(plan))

    return plan

def callback(pose_data):
    if info:
        rospy.loginfo('\n raw info from unity: {}\n'.format(pose_data))
    plan = go_to_pose_goal(pose_data)
    if info:
        rospy.loginfo('\nexecution sucess\n')
    move_plan_publisher.publish(plan)

def listen_and_move_robot():
    global move_plan_publisher
    rospy.init_node('tracker_pose_relay_node', anonymous=True)
    rospy.Subscriber('tracker_pose', geometry_msg_lib.Pose, callback)
    move_plan_publisher = rospy.Publisher('returned_plan', moveit_msg_lib.RobotTrajectory, queue_size=10)
    rospy.spin()

if __name__ == '__main__':
    info = True
    print("you receive some system arguments: {}".format(sys.argv))
    setup_robot(info=True, movegroup='manipulator')
    listen_and_move_robot()