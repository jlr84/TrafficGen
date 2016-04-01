# TrafficGen
Working folder to support traffic generation within CS6250 Project

## Folder Structure

1. /D-ITG-2.8.1-r1023/ -- Directory containing files installed with version 2.8.1 of D-ITG; this is here to ensure version continuity based on my initial somewhat-poorly written bash scripts that are dependent on this.

2. /ITGscripts/ -- Folder containing scripts used when calling D-ITG; currently this contains only 1 script, but we will likely need to create more for use in this project

3. setupNetwork1.py -- Execute this to setup mininet network (10 receiving hosts + 10 sending hosts + 2 switches) with all hosts configured to run sshd to allow next script to ssh into host to give commands.
$ sudo ./setupNetwork1.py 
NOTE: I have an anomoly right now, but I'm unsure if it's just my host (Windows 10) computer or a problem with this script. Specifically, immediately after starting this mininet, my host terminal can ping/ssh into all the mininet hosts; HOWEVER, after a minute or so, this ability is lost and the host terminal can no longer ping or ssh into the hosts.

4. generateTraffic1.sh -- Execute this second (after setupNetwork1.py, in a separate terminal) to generate traffic. 
$ sudo ./generateTraffic1.sh
NOTE: See error above (#3) for troubleshooting. If executed rapidly after starting mininet, this will successfully connect to all the hosts and successfully begin the traffic generation.

5. mytopo.py -- This is the same network topo as in the above script formatted just so you can run it easily by itself without the sshd setup. 
$ sudo mn --custom ~/mininet/TrafficGen/mytopo.py --topo benchmark --link=tc

## Requirements
* sshpass 
$ sudo apt-get install sshpass -y

## References
1. D-ITG Traffic Generator Tutorial:
http://sdnopenflow.blogspot.com/2015/05/using-of-d-itg-traffic-generator-in.html

2. D-ITG Manual
http://traffic.comics.unina.it/software/ITG/manual/D-ITG-2.8.1-manual.pdf

3. D-ITG Documentation Page
http://traffic.comics.unina.it/software/ITG/documentation.php

4. "Assussing-Mininet" GitHub Page I based some of this code on:
https://github.com/sjas/assessing-mininet

