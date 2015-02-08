pushd ~
git clone git://github.com/Itseez/opencv.git
cd opencv
git checkout 2.4
mkdir build
cd build
brew install cmake
cmake -DBUILD_SHARED_LIBS=OFF ..
#CC=gcc-4.7 CXX=g++-4.7 cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_PYTHON_SUPPORT=ON -D BUILD_EXAMPLES=ON -DBUILD_SHARED_LIBS=OFF ..
make -j8
popd
