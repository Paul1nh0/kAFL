
Tested in ubuntu 16.04 x86-64 which 6th gen intel cpu.

## before exec install.sh
```
sudo -Eu root apt-get install make gcc libcapstone-dev bc libssl-dev python-pip python-pygraphviz -y gnuplot ruby python libgtk2.0-dev libc6-dev flex -y 
sudo apt-get build-dep qemu-system-x86 -y
sudo -Eu root pip install mmh3 lz4 psutil
sudo apt install xdot python-twisted-core  // python-twisted-core package has /usr/bin/trial
```

## after exec install.sh
```
reboot

cd kAFL
cd kAFL-Fuzzer/agents
source compile.sh              //build loader/info/fuzzer exec files

mkdir -p fuzzer_dir/overlay_dir
mkdir -p fuzzer_dir/seed_dir
mkdir -p fuzzer_dir/working_dir
```

## run testing
```
cd kAFL/kAFL-Fuzzer
source run_test.sh    //should see  40 tests passed
```

## run linux
```
build a linux img

setup run.sh
-----------
#!/bin/bash

kafl_res="/home/openthos/kAFL/"

cd "$kafl_res/kAFL-Fuzzer/"

python kafl_fuzz.py -ip0 0-9 -v $kafl_res/wheezy.img $kafl_res/fuzzer_dir/overlay_dir/  $kafl_res/kAFL-Fuzzer/agents/linux_x86_64/fuzzer/ext4  3000 $kafl_res/fuzzer_dir/seed_dir/ $kafl_res/fuzzer_dir/working_dir/

``` 
