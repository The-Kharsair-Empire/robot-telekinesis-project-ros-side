import rospy

from ur3_robotics.msg import UR3Joints

def callback(data):
    rospy.loginfo(data)

def listener():
    rospy.init_node('Joint_State_subcriber', anonymous=True)
    rospy.Subscriber('joint_state', UR3Joints, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()