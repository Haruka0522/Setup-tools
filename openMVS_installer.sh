sudo apt update && sudo apt install
sudo apt -y install git cmake libpng-dev libjpeg-dev libtiff-dev libglu1-mesa-dev
main_path=`pwd`

#Eigen
git clone https://gitlab.com/libeigen/eigen.git --branch 3.2
mkdir eigen_build && cd eigen_build
cmake . ../eigen
make && sudo make install
cd ..

#Boost
sudo apt -y install libboost-iostreams-dev libboost-program-options-dev libboost-system-dev libboost-serialization-dev

#OpenCV
sudo apt -y install libopencv-dev

#CGAL
sudo apt -y install libcgal-dev libcgal-qt5-dev

#VCGLib
git clone https://github.com/cdcseacave/VCG.git vcglib

#Ceres
sudo apt -y install libatlas-base-dev libsuitesparse-dev
git clone https://ceres-solver.googlesource.com/ceres-solver ceres-solver
mkdir ceres_build && cd ceres_build
cmake . ../ceres-solver/ -DMINIGLOG=ON -DBUILD_TESTING=OFF -DBUILD_EXAMPLES=OFF
make -j2 && sudo make install
cd ..

#GLFW3
sudo apt -y install freeglut3-dev libglew-dev libglfw3-dev

#OpenMVS
git clone https://github.com/cdcseacave/openMVS.git openMVS
mkdir openMVS_build && cd openMVS_build
cmake . ../openMVS -DCMAKE_BUILD_TYPE=Release -DVCG_ROOT="$main_path/vcglib"

#Install OpenMVS library
make -j2 && sudo make install
