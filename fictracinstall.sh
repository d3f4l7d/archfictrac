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
wget -O 
mkdir ~/.config/fictrac/build
cd ~/.config/fictrac/build
cmake ..
cmake --build . --config Release --parallel $(nproc) --clean-first
