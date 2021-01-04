#! /usr/bin/env python
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

def go_to_joint_goal(data):

    if info:
        print('==== Joint state from unity: \n'
              'joint base: {}\n'
              'joint shoulder: {}\n'
              'joint elbow: {}\n'
              'joint wrist1: {}\n'
              'joint wrist2: {}\n'
              'joint wrist3: {}\n'
              .format(data.joint_base, data.joint_shoulder, data.joint_elbow,
                    data.joint_wrist1, data.joint_wrist2, data.joint_wrist3))

    joint_state = []
    joint_state.append(radians(data.joint_base))
    joint_state.append(radians(data.joint_shoulder))
    joint_state.append(radians(data.joint_elbow))
    joint_state.append( radians(data.joint_wrist1))
    joint_state.append(radians(data.joint_wrist2))
    joint_state.append(radians(data.joint_wrist3))

    move_group.go(joint_state, wait=True)

    move_group.stop()

def callback(joint_data):
    if info:
        rospy.loginfo('\n raw info from unity: {}\n'.format(joint_data))
    go_to_joint_goal(joint_data)
    if info:
        rospy.loginfo('\nexecution sucess\n')


def listen_and_move_robot():
    rospy.init_node('relay_node', anonymous=True)
    rospy.Subscriber('joint_state', UR3Joints, callback)
    rospy.spin()

if __name__ == '__main__':
    info = True
    print("you receive some system arguments: {}".format(sys.argv))
    setup_robot(info=True, movegroup='manipulator')
    listen_and_move_robot()
