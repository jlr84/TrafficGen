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
# h201 10.0.0.81
# h202 10.0.0.82
# h203 10.0.0.83
# h204 10.0.0.84
# h205 10.0.0.85
# h206 10.0.0.86
# h207 10.0.0.87
# h208 10.0.0.88
# h209 10.0.0.89
# h210 10.0.0.90

## Other Hosts 
# log  10.0.0.21
# c0   127.0.0.1


# first clean up all old binary logs
rm -rf ../../../log_*

# now start the actual tests

####################
echo '***** Receiver 1'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.81 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 2'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.82 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 3'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.83 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 4'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.84 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 5'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.85 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 6'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.86 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 7'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.87 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 8'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.88 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 9'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.89 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 10'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.90 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 11'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.91 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 12'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.92 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 13'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.93 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 14'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.94 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 15'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.95 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 16'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.96 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 17'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.97 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 18'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.98 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 19'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.99 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 20'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.100 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 21'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.101 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 22'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.102 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 23'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.103 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 24'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.104 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 25'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.105 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 26'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.106 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 27'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.107 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 28'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.108 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 29'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.109 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 30'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.110 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 31'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.111 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 32'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.112 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 33'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.113 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 34'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.114 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 35'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.115 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 36'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.116 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 37'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.117 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 38'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.118 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 39'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.119 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
echo '***** Receiver 40'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.120 "~/mininet/TrafficGen/D-ITG-2.8.1-r1023/bin/ITGRecv 0>/dev/null" &'

####################
####################
echo '***** Sender 1'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.1 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.81  01000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 1 FINISHED"&'

####################
echo '***** Sender 2'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.2 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.82  02000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 2 FINISHED"&'

####################
echo '***** Sender 3'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.3 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.83  03000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 3 FINISHED"&'

####################
echo '***** Sender 4'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.4 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.84  04000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 4 FINISHED"&'

####################
echo '***** Sender 5'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.5 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.85  05000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 5 FINISHED"&'

####################
echo '***** Sender 6'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.6 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.86  05000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 6 FINISHED"&'

####################
echo '***** Sender 7'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.7 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.87  01000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 7 FINISHED"&'

####################
echo '***** Sender 8'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.8 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.88  01000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 8 FINISHED"&'

####################
echo '***** Sender 9'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.9 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.89  01000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 9 FINISHED"&'

####################
echo '***** Sender 10'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.10 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.90  01000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 10 FINISHED"&'

####################
echo '***** Sender 11'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.11 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.91  01000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 11 FINISHED"&'

####################
echo '***** Sender 12'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.12 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.92  02000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 12 FINISHED"&'

####################
echo '***** Sender 13'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.13 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.93  03000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 13 FINISHED"&'

####################
echo '***** Sender 14'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.14 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.94  04000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 14 FINISHED"&'

####################
echo '***** Sender 15'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.15 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.95  05000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 15 FINISHED"&'

####################
echo '***** Sender 16'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.16 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.96  01000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 16 FINISHED"&'

####################
echo '***** Sender 17'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.17 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.97  01000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 17 FINISHED"&'

####################
echo '***** Sender 18'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.18 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.98  01000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 18 FINISHED"&'

####################
echo '***** Sender 19'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.19 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.99  01000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 19 FINISHED"&'

####################
echo '***** Sender 20'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.20 "\
echo '\n' && date && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.100  01000 20000 4950 0>/dev/null && \
\
date && echo ***** ... Sender 20 FINISHED"&'

####################
echo '***** Sender 21'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.21 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.101  06000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 21 FINISHED"&'

####################
echo '***** Sender 22'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.22 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.102  06000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 22 FINISHED"&'

####################
echo '***** Sender 23'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.23 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.103  06000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 23 FINISHED"&'

####################
echo '***** Sender 24'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.24 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.104  06000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 24 FINISHED"&'

####################
echo '***** Sender 25'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.25 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.105  06000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 25 FINISHED"&'

####################
echo '***** Sender 26'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.26 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.106  06000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 26 FINISHED"&'

####################
echo '***** Sender 27'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.27 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.107  06000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 27 FINISHED"&'

####################
echo '***** Sender 28'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.28 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.108  06000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 28 FINISHED"&'

####################
echo '***** Sender 29'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.29 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.109  06000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 29 FINISHED"&'

####################
echo '***** Sender 30'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.30 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.110  10000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 30 FINISHED"&'
####################
echo '***** Sender 31'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.31 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.111  06000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 31 FINISHED"&'

####################
echo '***** Sender 32'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.32 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.112  06000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 32 FINISHED"&'

####################
echo '***** Sender 33'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.33 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.113  06000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 33 FINISHED"&'

####################
echo '***** Sender 34'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.34 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.114  06000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 34 FINISHED"&'

####################
echo '***** Sender 35'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.35 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.115  06000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 35 FINISHED"&'

####################
echo '***** Sender 36'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.36 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.116  06000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 36 FINISHED"&'

####################
echo '***** Sender 37'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.37 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.117  07000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 37 FINISHED"&'

####################
echo '***** Sender 38'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.38 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.118  08000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 38 FINISHED"&'

####################
echo '***** Sender 39'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.39 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.119  09000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 39 FINISHED"&'

####################
echo '***** Sender 40'
bash -i -l -c 'sshpass -p mininet \
ssh -oStrictHostKeyChecking=no mininet@10.0.0.40 "\
echo '\n' && date && sleep 10 && ~/mininet/TrafficGen/ITGscripts/ITGSendTCP_cbr 10.0.0.120  10000 3000 1157 0>/dev/null && \
\
date && echo ***** ... Sender 40 FINISHED"&'



####################
####################
sleep 10
sudo ovs-ofctl add-flow s1 "priority=62000,tcp,ip,ip_src=10.0.0.81,ip_dst=10.0.0.1,actions=controller"
sudo ovs-ofctl add-flow s1 "priority=62000,tcp,ip,ip_src=10.0.0.82,ip_dst=10.0.0.2,actions=controller"
sleep 3
sudo ovs-ofctl del-flows s1 "tcp,ip,ip_src=10.0.0.82,ip_dst=10.0.0.2"
sudo ovs-ofctl del-flows s1 "tcp,ip,ip_src=10.0.0.81,ip_dst=10.0.0.1"
####################
echo '***** END TEST'
