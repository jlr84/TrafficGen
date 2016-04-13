#!/bin/bash
#
# TEST SUITE SCRIPT, single traffic only (srv1 -> cl1)
#
# NEEDS: sudo apt-get install sshpass -y
#
# ssh's automatically into each machine, starting everything.
#
###########################################################################
## IP Notes (Source: Running 'benchmark.py' file)

## Sender Hosts
# h1   10.0.0.1
# h2   10.0.0.2
# h3   10.0.0.3
# h4   10.0.0.4
# h5   10.0.0.5
# h6   10.0.0.6
# h7   10.0.0.7
# h8   10.0.0.8
# h9   10.0.0.9
# h10  10.0.0.10 

## Receiver Hosts
# h201 10.0.0.11
# h202 10.0.0.12
# h203 10.0.0.13
# h204 10.0.0.14
# h205 10.0.0.15
# h206 10.0.0.16
# h207 10.0.0.17
# h208 10.0.0.18
# h209 10.0.0.19
# h210 10.0.0.20

## Other Hosts 
# log  10.0.0.21
# c0   127.0.0.1


# first clean up all old binary logs
rm -rf log_*

# now start the actual tests
####################
echo '***** log server'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.21 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGLog 0>/dev/null" &'


####################
echo '***** Receiver 1'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.11 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 2'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.12 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 3'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.13 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 4'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.14 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 5'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.15 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 6'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.16 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 7'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.17 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 8'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.18 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 9'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.19 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 10'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.20 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Sender 1'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.1 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.11 10.0.0.21   01000 300000 5650 0>/dev/null && \
\
date && echo ***** ... Sender 1 FINISHED"&'

####################
echo '***** Sender 2'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.2 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.12 10.0.0.21  02000 300000 5650 0>/dev/null && \
\
date && echo ***** ... Sender 2 FINISHED"&'

####################
echo '***** Sender 3'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.3 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.13 10.0.0.21  03000 300000 5650 0>/dev/null && \
\
date && echo ***** ... Sender 3 FINISHED"&'

####################
echo '***** Sender 4'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.4 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.14 10.0.0.21  04000 300000 5650 0>/dev/null && \
\
date && echo ***** ... Sender 4 FINISHED"&'

####################
echo '***** Sender 5'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.5 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.15 10.0.0.21  05000 300000 5650 0>/dev/null && \
\
date && echo ***** ... Sender 5 FINISHED"&'

####################
echo '***** Sender 6'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.6 "\
echo '\n' && date && sleep 30 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCPBursty_cbr 10.0.0.16 10.0.0.21  06000 90000 5650 0>/dev/null && \
\
date && echo ***** ... Sender 6 FINISHED"&'

####################
echo '***** Sender 7'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.7 "\
echo '\n' && date && sleep 30 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCPBursty_cbr 10.0.0.17 10.0.0.21  07000 90000 5650 0>/dev/null && \
\
date && echo ***** ... Sender 7 FINISHED"&'

####################
echo '***** Sender 8'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.8 "\
echo '\n' && date && sleep 30 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCPBursty_cbr 10.0.0.18 10.0.0.21  08000 90000 5650 0>/dev/null && \
\
date && echo ***** ... Sender 8 FINISHED"&'

####################
echo '***** Sender 9'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.9 "\
echo '\n' && date && sleep 30 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCPBursty_cbr 10.0.0.19 10.0.0.21  09000 90000 5650 0>/dev/null && \
\
date && echo ***** ... Sender 9 FINISHED"&'

####################
echo '***** Sender 10'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.10 "\
echo '\n' && date && sleep 30 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCPBursty_cbr 10.0.0.20 10.0.0.21  10000 90000 5650 0>/dev/null && \
\
date && echo ***** ... Sender 10 FINISHED"&'

####################
echo '***** END TEST'
