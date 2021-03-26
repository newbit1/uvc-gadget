# uvcgadget - UVC gadget C library

uvcgadget is a pure C library that implements handling of UVC gadget functions.


## Utilities

- uvc-gadget - Sample test application

## Build Environment
```
Linux Mint 19 Tara
Cmake version 3.10.2
gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0
GNU Make 4.1
```

## Upgrade to Cmake Version 3.19.5
```
sudo apt purge --auto-remove cmake
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null
sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'
sudo apt update && sudo apt install cmake
```

## Supported NDKs r17c,r18b,r19c,r20b,r21e,r22,r23-beta1
```
for NDK Version=17c set export ANDROID_TOOLCHAIN_NAME=aarch64-linux-android-4.9
for NDK Verions>17c set export ANDROID_TOOLCHAIN_NAME=aarch64-linux-android-clang3.5
```
```
sudo apt install cmake
```

## Build instructions:

Get the NDK:
```
./configure_gcc_toolchain
```

Cross compile:
```
source .exports
```

## Target
```
ANDROID_ABI=arm64-v8a
ANDROID_PLATFORM=android-27
```

### Change Logs
#### [Mar. 2021]

* [glob.c] - Fixed some minor Issues for compilation

### Credits
* [Laurent Pinchart UVC gadget](https://git.ideasonboard.org/uvc-gadget.git)
* [taka-no-me android-cmake](https://github.com/taka-no-me/android-cmake)
* [Kitware APT Repository CMake](https://apt.kitware.com)

## wlhe uvc-gadget

**Upstream project [uvc-gadget](http://git.ideasonboard.org/uvc-gadget.git) has been updated and continuous maintenance**

**Please refer to http://git.ideasonboard.org/uvc-gadget.git**

UVC gadget userspace enhancement sample application

Fork from  
[uvc-gadget.git](http://git.ideasonboard.org/uvc-gadget.git)  
Apply enhancement Bhupesh Sharma's patchset  
[UVC gadget test application enhancements](https://www.spinics.net/lists/linux-usb/msg84376.html)  
and Robert Baldyga's patchset  
[Bugfixes for UVC gadget test application](https://www.spinics.net/lists/linux-usb/msg99220.html)  

## How to use

    Usage: ./uvc-gadget [options]
    
    Available options are
        -b             Use bulk mode
        -d             Do not use any real V4L2 capture device
        -f <format>    Select frame format
                0 = V4L2_PIX_FMT_YUYV
                1 = V4L2_PIX_FMT_MJPEG
        -h             Print this help screen and exit
        -i image       MJPEG image
        -m             Streaming mult for ISOC (b/w 0 and 2)
        -n             Number of Video buffers (b/w 2 and 32)
        -o <IO method> Select UVC IO method:
                0 = MMAP
                1 = USER_PTR
        -r <resolution> Select frame resolution:
                0 = 360p, VGA (640x360)
                1 = 720p, WXGA (1280x720)
        -s <speed>     Select USB bus speed (b/w 0 and 2)
                0 = Full Speed (FS)
                1 = High Speed (HS)
                2 = Super Speed (SS)
        -t             Streaming burst (b/w 0 and 15)
        -u device      UVC Video Output device
        -v device      V4L2 Video Capture device

## Build  

- host:  
    make
- Cross compile:  
    make ARCH=arch CROSS_COMPILE=cross_compiler  
    eg:  
    make ARCH=arm CROSS_COMPILE=arm-hisiv600-linux-  
- or:  
    set ARCH, CROSS_COMPILE, KERNEL_DIR in Makefile

## Change log

- Apply patchset [Bugfixes for UVC gadget test application](https://www.spinics.net/lists/linux-usb/msg99220.html)  

- Apply patchset [UVC gadget test application enhancements](https://www.spinics.net/lists/linux-usb/msg84376.html)  

- Add Readme/.gitignore and documentations  
  Copy linux-3.18.y/drivers/usb/gadget/function/uvc.h into repository, change include path for build

### Initial

- Fork(copy) from [uvc-gadget.git](http://git.ideasonboard.org/uvc-gadget.git)
