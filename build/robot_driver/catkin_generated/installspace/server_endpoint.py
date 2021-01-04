#!/usr/bin/env python2

import rospy


from ros_tcp_endpoint.server import TcpServer
from ros_tcp_endpoint.publisher import RosPublisher
from ros_tcp_endpoint.subscriber import RosSubscriber
from ros_tcp_endpoint.service import RosService

from ur3_robotics.msg import UR3Joints


def main():
    ros_node_name = rospy.get_param("/TCP_NODE_NAME", 'TCPServer')
    buffer_size = rospy.get_param("/TCP_BUFFER_SIZE", 1024)
    connections = rospy.get_param("/TCP_CONNECTIONS", 10)
    tcp_server = TcpServer(ros_node_name, buffer_size, connections)

    tcp_server.source_destination_dict = {
        'joint_state': RosPublisher('joint_state', UR3Joints, queue_size=10)

    }

    rospy.init_node(ros_node_name, anonymous=True)
    tcp_server.start()
    rospy.spin()


if __name__ == "__main__":
    main()
