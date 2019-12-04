all: git_submodule mavlink_control

mavlink_control: mavlink_control.cpp
	g++ -I mavlink/include/mavlink/v2.0 mavlink_control.cpp serial_port.cpp autopilot_interface.cpp lidarlite_v3.cpp -o mavlink_control -lpthread

llv3: llv3.cpp
	g++ llv3.cpp lidarlite_v3.cpp -I.. -o llv3

git_submodule:
	git submodule update --init --recursive

clean:
	 rm -rf *o mavlink_control
