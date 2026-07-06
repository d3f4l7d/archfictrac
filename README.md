# For Users Of This Repository

## Added Patch Info (Jul 06 2026 Updated)

| Added Date | Patched filename | Affected When | Description |
| ---------- | ---------------- | ------------- | ----------- |
| 07.06.2026 | calib.hpp        | opencv 4.1.3 -> opencv 5.0.0 | There is a conflict between opencv5.0.0's cv::CameraModel and rjdmoore's CameraModel. I solved this issue by just renaming cv::CameraModel from CameraModel to CVCameraModel in calib.hpp (In my local env, the path of calib.hpp is '/usr/include/opencv5/opencv2/calib.hpp'). |

# Introduction

<img width="1024" height="272" alt="110451048-176e9300-80c4-11eb-8e1e-e96545d7d2ed" src="https://github.com/user-attachments/assets/7b3c710c-dc94-4648-9daf-6b8afd5a15d4" />

[FicTrac](https://github.com/rjdmoore/fictrac) is a FOSS (Free and Open-Source Software) library that tracking spherical treadmill motion via its mathematical projection, which was published by [Richard J.D. Moore](https://scholar.google.com/citations?user=4cnh-KkAAAAJ&hl=en) as [His paper](https://doi.org/10.1016/j.jneumeth.2014.01.010). In original repository, Windows (10, 11, or WSL) and Ubuntu (20.04, or 22.04) are officially supported, not Arch Linux. Also, this repository was built via outdated, deprecated version of other dependencies for now. **So, I made some patches to work FicTrac with Arch Linux.**

## Installation
Execute like the below.
```
./fictracinstall.sh 2>&1 | tee fictracinstall_stdouterr.txt
```


## Usage of FicTrac v2.1.2 from this repository

Go video directory (Anywhere is fine for this repo's FicTrac). For example...
```
cd ~/Downloads/video/
```

Configure your video.
```
configGui config.txt
```

Then, execute fictrac.
```
fictrac config.txt
```

> [!TIP]
> config.txt will be automatically aligned by executing 'fictrac config.txt'.
> So you don't need to align them.

> [!WARNING]
> Color of your treadmill ball is everthing. In case you need to change the vals such as thr_ratio, thr_win_pc, you will probably fail to optimize and gain noize-free data. Change hard side, not soft side. Remenber, the example config vals in my code are almost using default vals.


# Output Data Structure
This was originally from [data_header.txt](https://github.com/rjdmoore/fictrac/blob/master/doc/data_header.txt) on the original FicTrac repository.

|  COL  | PARAMETER                       | ORIGINAL DESCRIPTION | D3F4L7'S TIP |
| ----- | ------------------------------- | ----------- | ----------- |
|   1   | frame counter                   | Corresponding video frame (starts at #1). | 
|  2-4  | delta rotation vector (cam)     | Change in orientation since last frame, represented as rotation angle/axis (radians) in camera coordinates (x right, y down, z forward). | Camera coordinate. |
|   5   | delta rotation error score      | Error score associated with rotation estimate. |
|  6-8  | delta rotation vector (lab)     |  Change in orientation since last frame, represented as rotation angle/axis (radians) in laboratory coordinates (see *configImg.jpg). | Lab coordinate, which means north pole coordinate of the sphere. 6 corresponds to ψ (rotation derivative around X; roll), 7 corresponds to θ (rotation derivative around Y; pitch), 8 corresponds to φ (rotation derivative around Z; yaw).|
|  9-11 | absolute rotation vector (cam)  | Absolute orientation of the sphere represented as rotation angle/axis (radians) in camera coordinates. |
| 12-14 | absolute rotation vector (lab)  | Absolute orientation of the sphere represented as rotation angle/axis (radians) in laboratory coordinates. |
| 15-16 | integrated x/y position ~~(lab)~~ (animal)   | Integrated x/y position (radians) in laboratory coordinates. Scale by sphere radius for true position. | Animal coordinate, which means animal's coordinate. 15 corresponds to integrated X motion, which means this X can be contained sidestepping and forward walking at the same time in the meaning of "Not neglecting heading". 16 corresponds to integrated Y motion. This info can only be used for drawing the fictive path |
|  17   | integrated animal heading ~~(lab)~~ (animal) | Integrated heading orientation (radians) of the animal in laboratory coordinates. This is the direction the animal is facing. | Heading direction! |
|  18   | animal movement direction ~~(lab)~~ (animal) | Instantaneous running direction (radians) of the animal in laboratory coordinates. This is the direction the animal is moving in the lab frame (add to animal heading to get direction in world). |
|  19   | animal movement speed ~~(lab)~~ (animal) | Instantaneous running speed (radians/frame) of the animal. Scale by sphere radius for true speed. |
| 20-21 | integrated forward/side motion ~~(lab)~~ (animal) | Integrated x/y position (radians) of the sphere in laboratory coordinates neglecting heading. Equivalent to the output from two optic mice. | 20 corresponds to sidestepping and forward walking integrated X motion neglecting heading, 21 corresponds to integrated Y motion.|
|  22   | timestamp                       | Either position in video file (ms) or frame capture time (ms since epoch). |
|  23   | sequence counter                | Position in current frame sequence. Usually corresponds directly to frame counter, but can reset to 1 if tracking is reset. |
|  24   | delta timestamp                 | Time (ms) since last frame. |
|  25   | alt. timestamp                  | Frame capture time (ms since midnight). |



## License
MIT License - see [LICENSE](/LICENSE) for more details.
