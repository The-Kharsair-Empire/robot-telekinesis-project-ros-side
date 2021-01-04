#!/usr/bin/env python2


from __future__ import print_function
import rospy
import random

from ur3_robotics.srv import UR3ServiceMsg, UR3ServiceMsgResponse
from ur3_robotics.msg import UR3Joints


def trajectoryPattern(req):

    print("Request msg: \nCurrent joint config of UR3 robot\n{}".format(req.joint_input))

    response = UR3ServiceMsgResponse()
    current_config = [
        req.joint_input.joint_base,
        req.joint_input.joint_shoulder,
        req.joint_input.joint_elbow,
        req.joint_input.joint_wrist1,
        req.joint_input.joint_wrist2,
        req.joint_input.joint_wrist3,
        req.joint_input.joint_hand,
        req.joint_input.finger_a,
        req.joint_input.finger_b,
    ]
    print("Response is a sequence of states that constitute the robot trajectory plan")
    for i in range(20):
        current_config[0] += random.uniform(-5.0, 5.0)
        current_config[1] += random.uniform(-5.0, 5.0)
        current_config[2] += random.uniform(-5.0, 5.0)
        current_config[3] += random.uniform(-5.0, 5.0)
        current_config[4] += random.uniform(-5.0, 5.0)
        current_config[5] += random.uniform(-5.0, 5.0)
        current_config[6] += random.uniform(-5.0, 5.0)
        current_config[7] += random.uniform(-0.01, 0.0)
        current_config[8] += random.uniform(-0.01, 0.0)

        state = UR3Joints()
        state.joint_base = current_config[0]
        state.joint_shoulder = current_config[1]
        state.joint_elbow = current_config[2]
        state.joint_wrist1 = current_config[3]
        state.joint_wrist2 = current_config[4]
        state.joint_wrist3 = current_config[5]
        state.joint_hand = current_config[6]
        state.finger_a = current_config[7]
        state.finger_b = current_config[8]

        response.trajectories.append(state)

        print('state {} is:\n{}'.format(i, state))

    return response


def move_ur3_service():
    rospy.init_node('move_ur3_service')
    s = rospy.Service('move_ur3', UR3ServiceMsg, trajectoryPattern)

    rospy.spin()


if __name__ == "__main__":
    move_ur3_service()