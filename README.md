# Introduction

<img width="1024" height="272" alt="110451048-176e9300-80c4-11eb-8e1e-e96545d7d2ed" src="https://github.com/user-attachments/assets/7b3c710c-dc94-4648-9daf-6b8afd5a15d4" />

[FicTrac](https://github.com/rjdmoore/fictrac) is a FOSS (Free and Open-Source Software) library that tracking spherical treadmill motion via its mathematical projection, which was published by [Richard J.D. Moore](https://scholar.google.com/citations?user=4cnh-KkAAAAJ&hl=en) as [His paper](https://doi.org/10.1016/j.jneumeth.2014.01.010). In original repository, Windows (10, 11, or WSL) and Ubuntu (20.04, or 22.04) are officially supported, not Arch Linux. Also, this repository was built via outdated, deprecated version of other dependencies for now. **So, I made some patches to work FicTrac with Arch Linux.**

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
