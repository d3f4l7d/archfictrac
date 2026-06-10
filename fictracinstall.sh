if pacman -Q zsh &> /dev/null; then
    #!/bin/zsh
    date
    echo "zsh detected ($USER@$HOSTNAME)"
else
    echo "zsh is not installed."
    echo "This script was tested under zsh."
    echo "Install zsh via pacman like: sudo pacman -S zsh && sudo chsh -s /bin/zsh $USER"
    echo "Or remove this if section via your texteditor like: vim fictracinstall.sh"
    exit
fi


echo
echo " _____ ___ ____ _____ ____      _    ____ "
echo "|  ___|_ _/ ___|_   _|  _ \    / \  / ___|"
echo "| |_   | | |     | | | |_) |  / _ \| |    "
echo "|  _|  | | |___  | | |  _ <  / ___ \ |___ "
echo "|_|   |___\____| |_| |_| \_\/_/   \_\____|"
echo

sudo pacman -Syuu

if [ ! -d "~/.config/fictrac/build" ]; then
    echo
    echo " _____ _____ "
    echo "|  ___|_   _|"
    echo "| |_    | |  "
    echo "|  _|   | |  "
    echo "|_|     |_|  "
    echo
    
    sudo pacman -S gcc cmake ffmpeg nlopt boost qt6 vtk hdf5 opencv
    git clone https://github.com/rjdmoore/fictrac.git ~/.config/fictrac
    mkdir ~/.config/fictrac/build
    cd ~/.config/fictrac/build
    cmake ..
    cp ~/.config/d3f4l7d/archfictrac/SocketRecorder.h ~/.config/fictrac/include/SocketRecorder.h
    cp ~/.config/d3f4l7d/archfictrac/SocketRecorder.cpp ~/.config/fictrac/src/SocketRecorder.cpp
    cp ~/.config/d3f4l7d/archfictrac/SerialRecorder.cpp ~/.config/fictrac/src/SerialRecorder.cpp
    cmake --build . --config Release --parallel $(nproc) --clean-first
    echo '# Add FicTrac to PATH. Check PATH via echo $PATH' | tee -a ~/.zshrc
    echo 'export PATH="$PATH:$HOME/.config/fictrac/bin"' | tee -a ~/.zshrc
    mkdir ~/.config/fictrac/video01
    cd ~/.config/fictrac/video01
    touch ~/.config/fictrac/video01/config.txt
    echo 'c2a_cnrs_yz      : { 720, 520, 720, 520 }' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'c2a_r            : { 1.084020, -1.083270, -1.285857 }' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'c2a_src          : c2a_cnrs_yz' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'c2a_t            : { -0.000921, 0.038328, 1.024834 }' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'do_display       : y' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'max_bad_frames   : -1' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'opt_bound        : 0.35' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'opt_do_global    : n' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'opt_max_err      : -1.000000' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'opt_max_evals    : 50' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'opt_tol          : 0.001' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'q_factor         : 6' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'roi_c            : { -0.007921, 0.207410, 0.978222 }' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'roi_c            : { 0.017761, 0.238081, 0.971083 }' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'roi_circ         : { 365, 248, 540, 359, 207, 358, 215, 524, 527, 526 }' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'roi_ignr         : { { 0, 280, 0, 0, 720, 0, 720, 280 } }' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'save_debug       : y' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'save_raw         : n' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'src_fn           : yourvideoname.mp4' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'src_fps          : 500' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'thr_ratio        : 1.25' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'thr_win_pc       : 0.25' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'vfov             : 45' | tee -a ~/.config/fictrac/video01/config.txt
    echo 'vid_codec        : h264' | tee -a ~/.config/fictrac/video01/config.txt
    echo "config file was successfully made!"
    echo "Import your FicTrac-recognizable video on ~/.config/fictrac/video01"
    
    echo "autoinstall of fictrac --DONE"
else
    echo "FicTrac is already installed. Skip FT process..."
fi
