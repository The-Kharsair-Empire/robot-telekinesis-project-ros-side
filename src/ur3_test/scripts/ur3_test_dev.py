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
from math import radians, degrees
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list

robot_model = "UR3"

robot, scene, move_group, display_trajectory_publisher, planning_frame, eef_link, group_names = None, None, None, None, None, None, None


def setup(info, **kwargs):
    global robot, scene, move_group, display_trajectory_publisher, planning_frame, eef_link, group_names
    moveit_commander.roscpp_initialize(sys.argv)
    rospy.init_node('ur3_test_node', anonymous=True)
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


def default_robot_position(robot_model):
    if robot_model == "UR3" and len(move_group.get_current_joint_values()) == 6:
        joint_state = []
        joint_state.append(-pi / 4)
        joint_state.append(-pi / 2)
        joint_state.append(-pi / 2)
        joint_state.append(-pi / 2)
        joint_state.append(pi)
        joint_state.append(-pi / 2)

        move_group.go(joint_state, wait=True)
        move_group.stop()

def all_zero(robot_model):
    if robot_model == "UR3" and len(move_group.get_current_joint_values()) == 6:
        joint_state = []
        joint_state.append(0)
        joint_state.append(0)
        joint_state.append(0)
        joint_state.append(0)
        joint_state.append(0)
        joint_state.append(0)

        move_group.go(joint_state, wait=True)
        move_group.stop()

def match_unity(robot_model):
    if robot_model == "UR3" and len(move_group.get_current_joint_values()) == 6:
        joint_state = []

        offset_base = 45.0
        offset_shoulder = -90.0
        offset_elbow = 0
        offset_wrist1 = -90.0
        offset_wrist2 = 0
        offset_wrist3 = 0



        joint_state.append(0 + radians(offset_base))
        joint_state.append(0 + radians(offset_shoulder))
        joint_state.append(0 + radians(offset_elbow))
        joint_state.append(0 + radians(offset_wrist1))
        joint_state.append(0 + radians(offset_wrist2))
        joint_state.append(0 + radians(offset_wrist3))

        move_group.go(joint_state, wait=True)
        move_group.stop()

def rotation_dance(robot_model, dance_length=20):
    if robot_model == "UR3" and len(move_group.get_current_joint_values()) == 6:
        joint_state = move_group.get_current_joint_values()
        for _ in range(dance_length):

            for i in range(len(joint_state)):
                joint_state[i] += 0.1

            move_group.go(joint_state, wait=True)

            move_group.stop()


def go_to_joint_goal(info):
    joint_state = move_group.get_current_joint_values()
    if info:
        print('==== Detect robot with {} joints'.format(len(joint_state)))
        print('==== joint state is of type {}'.format(type(joint_state)))
        print('==== joint state of the 6 joints of UR3 are {}'.format(joint_state))

    joint_state[0] = -pi / 3
    joint_state[1] = -pi / 4
    joint_state[2] = -pi / 4
    joint_state[3] = -pi / 1
    joint_state[4] = -pi / 3
    joint_state[5] = -pi / 2
    # joint_state[6] = 0, ur3 robot has only 6 joints

    move_group.go(joint_state, wait=True)

    move_group.stop()




def go_to_pos_goal(info):
    destination_pos = geometry_msg_lib.Pose()
    #destination_pos.orientation.x = 0.5
    #destination_pos.orientation.y = 0.5
    #destination_pos.orientation.z = -0.5
    destination_pos.orientation.w = 1.0

   #destination_pos.position.x = -0.18

    #destination_pos.position.y = -0.23

   # destination_pos.position.z = 1.24

    destination_pos.position.x = 0.4

    destination_pos.position.y = 0.1

    destination_pos.position.z = 0.4

   #move_group.set_current_state_as_start_state()

    move_group.set_pose_target(destination_pos)



    plan = move_group.plan()
    if info:

        print('==== The Planner returns plan of:\n {}'.format(plan))

    plan = move_group.go(wait=True)

    if info:
        print('==== plan executed :  {}'.format(plan))

    move_group.stop()
    move_group.clear_pose_targets()
    return plan


if __name__ == '__main__':
    setup(info=True, movegroup='manipulator')
    #all_zero(robot_model)
    #go_to_pos_goal(info=True)
    #match_unity(robot_model)
    #go_to_joint_goal(info=True)
    default_robot_position(robot_model)





    # rotation_dance(robot_model, 5)
    # default_robot_position(robot_model)

    # go_to_pos_goal(info=True)

