echo
echo " _____ ___ ____ _____ ____      _    ____ "
echo "|  ___|_ _/ ___|_   _|  _ \    / \  / ___|"
echo "| |_   | | |     | | | |_) |  / _ \| |    "
echo "|  _|  | | |___  | | |  _ <  / ___ \ |___ "
echo "|_|   |___\____| |_| |_| \_\/_/   \_\____|"
echo

sudo pacman -Syu

sudo pacman -S gcc cmake ffmpeg nlopt boost qt6 vtk hdf5 opencv
git clone https://github.com/rjdmoore/fictrac.git ~/.config/fictrac
mkdir ~/.config/fictrac/build
cd ~/.config/fictrac/build
cmake ..
wget -O ~/.config/fictrac/include/SocketRecorder.h https://github.com/d3f4l7d/archfictrac/SocketRecorder.h
wget -O ~/.config/fictrac/src/SocketRecorder.cpp https://github.com/d3f4l7d/archfictrac/SocketRecorder.cpp
wget -O ~/.config/fictrac/src/SerialRecorder.cpp https://github.com/d3f4l7d/archfictrac/SerialRecorder.cpp
cmake --build . --config Release --parallel $(nproc) --clean-first

echo "autoinstall of fictrac --DONE"
