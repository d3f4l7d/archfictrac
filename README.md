# Installation
Execute fictracinstall.sh
# FicTrac man
1. mkdir ~/.config/fictrac/track
2. sudo vim ~/.config/fictrac/track/config.txt (go to the example below)
3. ../bin/configGui config.txt
4. ../bin/fictrac config.txt

(One example of config.txt which makes ../bin/configGui and ../bin/fictrac work)
## FicTrac v2.1.2 config file (build date Nov  5 2025)
c2a_cnrs_yz      : { 720, 520, 720, 520 }
c2a_r            : { 1.084020, -1.083270, -1.285857 }
c2a_src          : c2a_cnrs_yz
c2a_t            : { -0.000921, 0.038328, 1.024834 }
do_display       : y
max_bad_frames   : -1
opt_bound        : 0.35
opt_do_global    : n
opt_max_err      : -1.000000
opt_max_evals    : 50
opt_tol          : 0.001
q_factor         : 6
roi_c            : { -0.007921, 0.207410, 0.978222 }
roi_circ         : { 152, 483, 357, 196, 559, 474 }
roi_ignr         : { { 290, 296, 352, 327, 395, 310, 447, 288, 524, 292, 521, 243, 481, 195, 434, 151, 390, 94, 337, 97, 292, 120, 237, 150, 190, 172, 177, 209, 169, 260 } }
roi_r            : 0.315233
save_debug       : y
save_raw         : n
src_fn           : front_WT42134850050020101.mp4
src_fps          : -1.000000
thr_ratio        : 1.25
thr_win_pc       : 0.25
vfov             : 45
vid_codec        : h264
