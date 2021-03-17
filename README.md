# uvcgadget - UVC gadget C library

uvcgadget is a pure C library that implements handling of UVC gadget functions.


## Utilities

- uvc-gadget - Sample test application

## Build Environment
Linux Mint 19 Tara
Cmake version 3.10.2
gcc (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0
GNU Make 4.1

## Upgrade to Cmake Version 3.19.5
```
sudo apt purge --auto-remove cmake
wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /etc/apt/trusted.gpg.d/kitware.gpg >/dev/null
sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'
sudo apt update && sudo apt install cmake
```

## Supported NDKs
- 17c,18b,19c,20b,r21e,r22,r23-beta1

for NDK Version=17c set export ANDROID_TOOLCHAIN_NAME=aarch64-linux-android-4.9
for NDK Verions>17c set export ANDROID_TOOLCHAIN_NAME=aarch64-linux-android-clang3.5
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

ANDROID_ABI=arm64-v8a
ANDROID_PLATFORM=android-27

### Change Logs
#### [Mar. 2021]

* [glob.c] - Fixed some minor Issues for compilation

### Credits
* [Laurent Pinchart UVC gadget](https://git.ideasonboard.org/uvc-gadget.git)
* [taka-no-me android-cmake](https://github.com/taka-no-me/android-cmake)
* [Kitware APT Repository CMake](https://apt.kitware.com)
