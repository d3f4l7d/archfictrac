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
echo " ____  _____ ____  _   _ ___ _     ____  "
echo "|  _ \| ____| __ )| | | |_ _| |   |  _ \ "
echo "| |_) |  _| |  _ \| | | || || |   | | | |"
echo "|  _ <| |___| |_) | |_| || || |___| |_| |"
echo "|_| \_\_____|____/ \___/|___|_____|____/ "
echo

sudo pacman -Syuu

if [ ! -d "~/.config/fictrac/build_260706" ]; then
    echo
    echo " ____  ____  "
    echo "|  _ \| __ ) "
    echo "| |_) |  _ \ "
    echo "|  _ <| |_) |"
    echo "|_| \_\____/ "
    echo
    
    mkdir ~/.config/fictrac/build_260706
    cd ~/.config/fictrac/build_260706
    cmake ..
    sudo cp -v ~/.config/d3f4l7d/archfictrac/calib.hpp /usr/include/opencv5/opencv2/calib.hpp
    cmake --build . --config Release --parallel $(nproc) --clean-first
    
    echo "rebuild of fictrac --DONE"
else
    echo "FicTrac has been already rebuilt. Skip FT process..."
fi
