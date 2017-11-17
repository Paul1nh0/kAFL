#!/bin/bash

kafl_res="/home/openthos/kAFL/"

cd "$kafl_res/kAFL/kAFL-Fuzzer/"

python kafl_fuzz.py -ip0 0-9 -v $kafl_res/ubuntu-16.04.2-amd64.img $kafl_res/fuzzer_dir/overlay_dir/  $kafl_res/kAFL/kAFL-Fuzzer/agents/linux_x86_64/fuzzer/ext4  3000 $kafl_res/fuzzer_dir/seed_dir/ $kafl_
res/fuzzer_dir/working_dir/

