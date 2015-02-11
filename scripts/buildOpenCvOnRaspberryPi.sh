echo JAVA / NODE / OpenCV: Set memory split to 16MB GPU so CPU has rest for compilation!!
read -p "Press any key to continue or CTRL-C to cancel and run sudo raspi-config to adjust memory split... " -n1 -s

pushd ~
echo Setting swapfile to 1024MB:
touch ~/swapspec.txt
printf "CONF_SWAPSIZE=1024\n" >> ~/swapspec.txt
sudo cp ~/swapspec.txt /etc/dphys-swapfile
sudo /etc/init.d/dphys-swapfile stop
sudo /etc/init.d/dphys-swapfile start
sudo apt-get -y update
sudo apt-get -y install build-essential cmake cmake-qt-gui pkg-config libpng12-0 libpng12-dev libpng++-dev libpng3 libpnglite-dev zlib1g-dbg zlib1g zlib1g-dev pngtools libtiff4-dev libtiff4 libtiffxx0c2 libtiff-tools oracle-java7-jdk ant git libjpeg-dev libpng-dev libtiff-dev libjasper-dev gcc-4.7
sudo apt-get -y install libjpeg8 libjpeg8-dev libjpeg8-dbg libjpeg-progs ffmpeg libavcodec-dev libavcodec53 libavformat53 libavformat-dev libgstreamer0.10-0-dbg libgstreamer0.10-0 libgstreamer0.10-dev libxine1-ffmpeg libxine-dev libxine1-bin libunicap2 libunicap2-dev libdc1394-22-dev libdc1394-22 libdc1394-utils swig libv4l-0 libv4l-dev python-numpy libpython2.6 python-dev python2.6-dev libgtk2.0-dev pkg-config libswscale-dev
#libtbb-dev libtbb2
git clone git://github.com/Itseez/opencv.git
cd opencv
git checkout 2.4
mkdir build
cd build
#cmake -DBUILD_SHARED_LIBS=OFF ..
export JAVA_HOME=/usr/lib/jvm/jdk-7-oracle-armhf
CC=gcc-4.7 CXX=g++-4.7 cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_PYTHON_SUPPORT=ON -D BUILD_EXAMPLES=ON -DBUILD_SHARED_LIBS=OFF ..
make -j8
popd
