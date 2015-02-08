echo JAVA / NODE / OpenCV: Set memory split to 16MB GPU so CPU has rest for compilation!!
read -p "Press any key to continue or CTRL-C to cancel and run sudo raspi-config to adjust memory split... " -n1 -s

pushd ~
echo Setting swapfile to 1024MB:
touch ~/swapspec.txt
printf "CONF_SWAPSIZE=1024\n" >> ~/swapspec.txt
sudo cp ~/swapspec.txt /etc/dphys-swapfile
sudo /etc/init.d/dphys-swapfile stop
sudo /etc/init.d/dphys-swapfile start
sudo apt-get update && sudo apt-get install -y oracle-java7-jdk ant cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev python-dev python-numpy libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev gcc-4.7
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
