# Intro for original FicTrac
![Original FicTrac img](https://github.com/d3fl7d/archfictrac/img/110451048-176e9300-80c4-11eb-8e1e-e96545d7d2ed.jpg)
## Installation
Execute like the below.
```
./fictracinstall.sh 2>&1 | tee fictracinstall_stdouterr.txt
```
## Usage of FicTrac v2.1.2 from this repository
Go video directory.
```
cd ~/.config/fictrac/video01
```
Then, execute fictrac
```
fictrac config.txt
```

> [!TIP]
> config.txt will be automatically aligned by executing 'fictrac config.txt'.
> So you don't need to align them.

> [!WARNING]
> Color of your treadmill ball is everthing. In case you need to change the vals such as thr_ratio, thr_win_pc, you will probably fail to optimize and gain noize-free data. Change hard side, not soft side. Remenber, the example config vals in my code are almost using default vals.


## License
MIT License - see [LICENSE](/LICENSE) for more details.
