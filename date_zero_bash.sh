cd /content
rm -f datetrain.csv
rm -f date.csv
rm -f train.bin
wget -c https://github.com/leedavid/leela-chess-to-Chinese-Chess/raw/master/lc0/libstdc++.so.6 
wget -c https://github.com/leedavid/leela-chess-to-Chinese-Chess/raw/master/lc0/GGnn_train
wget -c https://github.com/leedavid/leela-chess-to-Chinese-Chess/raw/master/lc0/GGnn
wget -c https://github.com/3438298980/ggn/raw/main/train.zip
upzip train.zip
cp libstdc++.so.6 /usr/lib/x86_64-linux-gnu/
mv GGnn_train datetrain.csv
mv GGnn date.csv
chmod 777 datetrain.csv
chmod 777 date.csv
chmod 777 train.bin
./datetrain.csv --user '泽田小言' --password 'zly4444' --lc0name 'date.csv' 
