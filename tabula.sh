wget -O data/tm_10x_v3.zip https://ndownloader.figshare.com/articles/5968960/versions/3
mkdir data/tm_10x_v3
unzip data/tm_10x_v3.zip -d data/tm_10x_v3
unzip data/tm_10x_v3/droplet.zip -d data/tm_10x_v3
rm -r data/tm_10x_v3/droplet/.DS_Store
wget -O data/tm_smart_v8.zip https://ndownloader.figshare.com/articles/5829687/versions/8
mkdir data/tm_smart_v8
unzip data/tm_smart_v8.zip -d data/tm_smart_v8
unzip data/tm_smart_v8/FACS.zip -d data/tm_smart_v8
rm -r data/tm_smart_v8/FACS/.DS_Store
cd data/tm_smart_v8/FACS/
for x in *.csv; do sed -i .bak 's/"//g' $x; done
rm -r *.bak
