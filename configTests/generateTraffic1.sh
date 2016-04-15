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
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendUDP_cbr 10.0.0.11 10.0.0.21   08000 60000 667 0>/dev/null && \
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendUDP_cbr 10.0.0.11 10.0.0.21   08500 60000 708 0>/dev/null && \
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendUDP_cbr 10.0.0.11 10.0.0.21   09000 60000 750 0>/dev/null && \
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendUDP_cbr 10.0.0.11 10.0.0.21   09500 60000 792 0>/dev/null && \
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendUDP_cbr 10.0.0.11 10.0.0.21   10000 60000 833 0>/dev/null && \
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendUDP_cbr 10.0.0.11 10.0.0.21   10500 60000 875 0>/dev/null && \
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendUDP_cbr 10.0.0.11 10.0.0.21   11000 60000 917 0>/dev/null && \
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendUDP_cbr 10.0.0.11 10.0.0.21   11500 60000 958 0>/dev/null && \
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendUDP_cbr 10.0.0.11 10.0.0.21   12000 60000 1000 0>/dev/null && \
\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.11 10.0.0.21   08000 60000 667 0>/dev/null && \
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.11 10.0.0.21   08500 60000 708 0>/dev/null && \
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.11 10.0.0.21   09000 60000 750 0>/dev/null && \
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.11 10.0.0.21   09500 60000 792 0>/dev/null && \
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.11 10.0.0.21   10000 60000 833 0>/dev/null && \
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.11 10.0.0.21   10500 60000 875 0>/dev/null && \
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.11 10.0.0.21   11000 60000 917 0>/dev/null && \
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.11 10.0.0.21   11500 60000 958 0>/dev/null && \
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.11 10.0.0.21   12000 60000 1000 0>/dev/null && \
\
date && echo ***** ... FINISHED"&'


####################
echo '***** END TEST'
