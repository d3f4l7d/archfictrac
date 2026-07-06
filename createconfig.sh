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
echo "  ____ ___  _   _ _____ ___ ____ "
echo " / ___/ _ \| \ | |  ___|_ _/ ___|"
echo "| |  | | | |  \| | |_   | | |  _ "
echo "| |__| |_| | |\  |  _|  | | |_| |"
echo " \____\___/|_| \_|_|   |___\____|"
echo

echo "Installation of FicTrac was almost DONE."
echo "Let's make an example config.txt on an example directory."
mkdir ~/Downloads/video/
cd ~/Downloads/video
touch ~/Downloads/video/config_ex.txt
echo 'c2a_cnrs_yz      : { 720, 520, 720, 520 }' | tee -a ~/Downloads/video/config_ex.txt
echo 'c2a_r            : { 1.084020, -1.083270, -1.285857 }' | tee -a ~/Downloads/video/config_ex.txt
echo 'c2a_src          : c2a_cnrs_yz' | tee -a ~/Downloads/video/config_ex.txt
echo 'c2a_t            : { -0.000921, 0.038328, 1.024834 }' | tee -a ~/Downloads/video/config_ex.txt
echo 'do_display       : y' | tee -a ~/Downloads/video/config_ex.txt
echo 'max_bad_frames   : -1' | tee -a ~/Downloads/video/config_ex.txt
echo 'opt_bound        : 0.35' | tee -a ~/Downloads/video/config_ex.txt
echo 'opt_do_global    : n' | tee -a ~/Downloads/video/config_ex.txt
echo 'opt_max_err      : -1.000000' | tee -a ~/Downloads/video/config_ex.txt
echo 'opt_max_evals    : 50' | tee -a ~/Downloads/video/config_ex.txt
echo 'opt_tol          : 0.001' | tee -a ~/Downloads/video/config_ex.txt
echo 'q_factor         : 6' | tee -a ~/Downloads/video/config_ex.txt
echo 'roi_c            : { -0.007921, 0.207410, 0.978222 }' | tee -a ~/Downloads/video/config_ex.txt
echo 'roi_c            : { 0.017761, 0.238081, 0.971083 }' | tee -a ~/Downloads/video/config_ex.txt
echo 'roi_circ         : { 365, 248, 540, 359, 207, 358, 215, 524, 527, 526 }' | tee -a ~/Downloads/video/config_ex.txt
echo 'roi_ignr         : { { 0, 280, 0, 0, 720, 0, 720, 280 } }' | tee -a ~/Downloads/video/config_ex.txt
echo 'save_debug       : y' | tee -a ~/Downloads/video/config_ex.txt
echo 'save_raw         : n' | tee -a ~/Downloads/video/config_ex.txt
echo 'src_fn           : yourvideoname.mp4' | tee -a ~/Downloads/video/config_ex.txt
echo 'src_fps          : 500' | tee -a ~/Downloads/video/config_ex.txt
echo 'thr_ratio        : 1.25' | tee -a ~/Downloads/video/config_ex.txt
echo 'thr_win_pc       : 0.25' | tee -a ~/Downloads/video/config_ex.txt
echo 'vfov             : 45' | tee -a ~/Downloads/video/config_ex.txt
echo 'vid_codec        : h264' | tee -a ~/Downloads/video/config_ex.txt
echo "config file was successfully made!"
echo "Import your FicTrac-recognizable video on ~/Downloads/video/"
echo "And then, 'fictrac config_ex.txt' (only in my case; YOU SHOULD MAKE YOUR OWN config_.txt)"
