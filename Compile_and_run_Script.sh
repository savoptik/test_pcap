#!/bin/sh

#  Compile_and_run_Script.sh
#  
#
#  Created by Артём Семёнов on 24.08.2019.
#  

scp ./main.c ubunta:~/project/github/test_pcap/
if ssh ubunta "cd ~/project/github/test_pcap/; make"
then ssh ubunta "cd ~/project/github/test_pcap/; ./test_pcap --vdev 'net_pcap0,rx_pcap=test_tcp.pcap,tx_pcap=test_tcp_out.pcap' --no-huge" 1>log.txt
else echo "error"
fi


