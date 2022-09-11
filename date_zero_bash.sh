#!/bin/bash
cp /opt/nvidia/nsight-systems/2022.1.3/host-linux-x64/libstdc++.so.6 /usr/lib/x86_64-linux-gnu/

cd /content
rm -f datetrain.csv
rm -f date.csv

wget -c https://github.com/leedavid/leela-chess-to-Chinese-Chess/raw/master/lc0/GGnn_train
wget -c https://github.com/leedavid/leela-chess-to-Chinese-Chess/raw/master/lc0/GGnn
mv GGnn_train datetrain.csv
mv GGnn date.csv
chmod 777 datetrain.csv
chmod 777 date.csv
./datetrain.csv --user '泽田小言' --password 'zly4444' --lc0name 'date.csv' --logout 0
