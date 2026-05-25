## Installation
Execute like the below.
```
./fictracinstall.sh
```
## FicTrac man
### Recommended Procedure
1. ```mkdir ~/.config/fictrac/cfgdir```
2. ```mkdir ~/.config/fictrac/cfghaven```
3. ```sudo vim ~/.config/fictrac/cfghaven/config_yourvideoname.txt```
4. (make config.txt like the example below)
5. ```sudo cp ~/.config/fictrac/cfghaven/config_yourvideoname.txt ~/.config/fictrac/cfgdir/config_yourvideoname.txt```
6. ```cd ~/.config/fictrac/cfgdir```
9. ```../bin/configGui config_yourvideoname.txt```
10. ```../bin/fictrac config_yourvideoname.txt```


(One example of ```config_yourvideoname.txt``` which makes ../bin/configGui and ../bin/fictrac work)
> [!TIP]
> Following init vals are automatically aligned by FicTrac like the below.
> So you don't need to align them.

> [!WARNING]
> Color of your treadmill ball is everthing. In case you need to change the vals such as thr_ratio, thr_win_pc, you will probably fail to optimize and gain noizefree data. Change hard side, not soft side.

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
14. roi_c            : { 0.017761, 0.238081, 0.971083 }
15. roi_circ         : { 365, 248, 540, 359, 207, 358, 215, 524, 527, 526 }
16. roi_ignr         : { { 0, 280, 0, 0, 720, 0, 720, 280 } }
17. save_debug       : y
18. save_raw         : n
19. src_fn           : yourvideoname.mp4
20. src_fps          : 500
21. thr_ratio        : 1.25
22. thr_win_pc       : 0.25
23. vfov             : 45
24. vid_codec        : h264

## License
MIT License - see [LICENSE](/LICENSE) for more details.
