#!/bin/bash
cp /opt/nvidia/nsight-systems/2022.1.3/host-linux-x64/libstdc++.so.6 /usr/lib/x86_64-linux-gnu/

cd /content
rm -f datetrain.csv
rm -f date.csv

wget -c https://github.com/zhusha9527/nnzero9527/raw/main/datetrain.csv
wget -c https://github.com/zhusha9527/nnzero9527/raw/main/date.csv

chmod 777 datetrain.csv
chmod 777 date.csv
./datetrain.csv --user '泽田小言' --password 'zly4444' --lc0name 'date.csv'
