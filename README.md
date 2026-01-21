# Installation
Execute fictracinstall.sh
# FicTrac man
1. mkdir ~/.config/fictrac/track
2. sudo vim ~/.config/fictrac/track/config.txt (go to the example below)
3. ../bin/configGui config.txt
4. ../bin/fictrac config.txt


(One example of config.txt which makes ../bin/configGui and ../bin/fictrac work)

0. FicTrac v2.1.2 config file (build date Nov  5 2025)
1. c2a_cnrs_yz      : { 720, 520, 720, 520 }
2. c2a_r            : { 1.084020, -1.083270, -1.285857 }
3. c2a_src          : c2a_cnrs_yz
4. c2a_t            : { -0.000921, 0.038328, 1.024834 }
5. do_display       : y
6. max_bad_frames   : -1
7. opt_bound        : 0.35
8. opt_do_global    : n
9. opt_max_err      : -1.000000
10. opt_max_evals    : 50
11. opt_tol          : 0.001
12. q_factor         : 6
13. roi_c            : { -0.007921, 0.207410, 0.978222 }
14. roi_circ         : { 152, 483, 357, 196, 559, 474 }
15. roi_ignr         : { { 290, 296, 352, 327, 395, 310, 447, 288, 524, 292, 521, 243, 481, 195, 434, 151, 390, 94, 337, 97, 292, 120, 237, 150, 190, 172, 177, 209, 169, 260 } }
16. roi_r            : 0.315233
17. save_debug       : y
18. save_raw         : n
19. src_fn           : front_WT42134850050020101.mp4
20. src_fps          : -1.000000
21. thr_ratio        : 1.25
22. thr_win_pc       : 0.25
23. vfov             : 45
24. vid_codec        : h264
