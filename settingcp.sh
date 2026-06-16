if pacman -Q zsh &> /dev/null; then
    #!/bin/zsh
    date
    echo "zsh detected ($USER@$HOSTNAME)"
else
    echo "zsh is not installed."
    echo "This script was tested under zsh."
    echo "Install zsh via pacman like: sudo pacman -S zsh && sudo chsh -s /bin/zsh $USER"
    echo "Or remove this if section via your texteditor like: vim goodbyeworld.sh"
    exit
fi


echo
echo " _ _ _   _ ____    _        _     _______   __  __  __ _____ _ _ "
echo "( | ) | | |  _ \  | |      / \   |__  /\ \ / / |  \/  |  ___( | )"
echo " V V| | | | |_) | | |     / _ \    / /  \ V /  | |\/| | |_   V V "
echo "    | |_| |  _ <  | |___ / ___ \  / /_   | |   | |  | |  _|      "
echo "     \___/|_| \_\ |_____/_/   \_\/____|  |_|   |_|  |_|_|        "
echo


SAVEDIR = ""
VIDDIR = ""
VID01 = ""
VID02 = ""
VID03 = ""
VID04 = ""
VID05 = ""
VID06 = ""
VID07 = ""
VID08 = ""
VID09 = ""
VID10 = ""


mkdir $SAVEDIR/front01/
mkdir $SAVEDIR/front02/
mkdir $SAVEDIR/front03/
mkdir $SAVEDIR/front04/
mkdir $SAVEDIR/front05/
mkdir $SAVEDIR/front06/
mkdir $SAVEDIR/front07/
mkdir $SAVEDIR/front08/
mkdir $SAVEDIR/front09/
mkdir $SAVEDIR/front10/
cp $HOME/.config/fictrac/config/config_whitedot_q10.txt $SAVEDIR/front01/
cp $HOME/.config/fictrac/config/config_whitedot_q10.txt $SAVEDIR/front02/
cp $HOME/.config/fictrac/config/config_whitedot_q10.txt $SAVEDIR/front03/
cp $HOME/.config/fictrac/config/config_whitedot_q10.txt $SAVEDIR/front04/
cp $HOME/.config/fictrac/config/config_whitedot_q10.txt $SAVEDIR/front05/
cp $HOME/.config/fictrac/config/config_whitedot_q10.txt $SAVEDIR/front06/
cp $HOME/.config/fictrac/config/config_whitedot_q10.txt $SAVEDIR/front07/
cp $HOME/.config/fictrac/config/config_whitedot_q10.txt $SAVEDIR/front08/
cp $HOME/.config/fictrac/config/config_whitedot_q10.txt $SAVEDIR/front09/
cp $HOME/.config/fictrac/config/config_whitedot_q10.txt $SAVEDIR/front10/
cd $SAVEDIR/front01/
sed -i '/src_fn           : <somevideo.mp4>/d' config_whitedot_q10.txt
echo "src_fn           : <$VID01>" | tee  -a config_whitedot_q10.txt
cd $SAVEDIR/front02/
sed -i '/src_fn           : <somevideo.mp4>/d' config_whitedot_q10.txt
echo "src_fn           : <$VID02>" | tee  -a config_whitedot_q10.txt
cd $SAVEDIR/front03/
sed -i '/src_fn           : <somevideo.mp4>/d' config_whitedot_q10.txt
echo "src_fn           : <$VID03>" | tee  -a config_whitedot_q10.txt
cd $SAVEDIR/front04/
sed -i '/src_fn           : <somevideo.mp4>/d' config_whitedot_q10.txt
echo "src_fn           : <$VID04>" | tee  -a config_whitedot_q10.txt
cd $SAVEDIR/front05/
sed -i '/src_fn           : <somevideo.mp4>/d' config_whitedot_q10.txt
echo "src_fn           : <$VID05>" | tee  -a config_whitedot_q10.txt
cd $SAVEDIR/front06/
sed -i '/src_fn           : <somevideo.mp4>/d' config_whitedot_q10.txt
echo "src_fn           : <$VID06>" | tee  -a config_whitedot_q10.txt
cd $SAVEDIR/front07/
sed -i '/src_fn           : <somevideo.mp4>/d' config_whitedot_q10.txt
echo "src_fn           : <$VID07>" | tee  -a config_whitedot_q10.txt
cd $SAVEDIR/front08/
sed -i '/src_fn           : <somevideo.mp4>/d' config_whitedot_q10.txt
echo "src_fn           : <$VID08>" | tee  -a config_whitedot_q10.txt
cd $SAVEDIR/front09/
sed -i '/src_fn           : <somevideo.mp4>/d' config_whitedot_q10.txt
echo "src_fn           : <$VID09>" | tee  -a config_whitedot_q10.txt
cd $SAVEDIR/front10/
sed -i '/src_fn           : <somevideo.mp4>/d' config_whitedot_q10.txt
echo "src_fn           : <$VID10>" | tee  -a config_whitedot_q10.txt
cp $SAVEDIR/$VIDDIR/$VID01 $SAVEDIR/front01/
echo "cp01 DONE"
cp $SAVEDIR/$VIDDIR/$VID02 $SAVEDIR/front02/
echo "cp02 DONE"
cp $SAVEDIR/$VIDDIR/$VID03 $SAVEDIR/front03/
echo "cp03 DONE"
cp $SAVEDIR/$VIDDIR/$VID04 $SAVEDIR/front04/
echo "cp04 DONE"
cp $SAVEDIR/$VIDDIR/$VID05 $SAVEDIR/front05/
echo "cp05 DONE"
cp $SAVEDIR/$VIDDIR/$VID06 $SAVEDIR/front06/
echo "cp06 DONE"
cp $SAVEDIR/$VIDDIR/$VID07 $SAVEDIR/front07/
echo "cp07 DONE"
cp $SAVEDIR/$VIDDIR/$VID08 $SAVEDIR/front08/
echo "cp08 DONE"
cp $SAVEDIR/$VIDDIR/$VID09 $SAVEDIR/front09/
echo "cp09 DONE"
cp $SAVEDIR/$VIDDIR/$VID10 $SAVEDIR/front10/
echo "cp10 DONE"





