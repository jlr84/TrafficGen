#!/usr/bin/python

"""
Custom topology for Mininet with additional custom setup configuration.

Topology: 
    10xhost(senders) --- switch --- switch 10xhost(receivers)
"""

from mininet.topo import Topo
from mininet.net import Mininet
#from mininet.node import RemoteController
from mininet.node import Node
from mininet.node import CPULimitedHost
from mininet.link import TCLink
from mininet.cli import CLI
from mininet.log import setLogLevel
from mininet.util import dumpNodeConnections

class BenchmarkTopo( Topo ):
    "BenchmarkTopo."

    def __init__( self, **opts ):
        "Create topology."

        # Initialize Topology
        Topo.__init__( self, **opts )

        # Add nodes
        # Switches first
        sw1 = self.addSwitch( 's1' )
        sw2 = self.addSwitch( 's2' )

	# Add sender hosts
	senders = set()
	for i in range(1,11):
	    senders.add(self.addHost('h'+str(i)))

	# Add receiver hosts
	receivers = set() 
	for i in range(1,11):
	    receivers.add(self.addHost('r'+str(i)))

	# Add log host
        h500 = self.addHost( 'log' )

        # Add Controller
        # NOTE: ***Don't think we need this; commented out for now.***
        # controller = self.addHost('controller')

        # Add links 
        # Switches first
        self.addLink( sw1, sw2, bw=10, delay='1ms' )

	# Add links 
	# Switches first
	self.addLink( sw1, sw2 )
	
	# Add links to log host
	self.addLink( sw1, h500 )
	self.addLink( sw2, h500 )

        # Add links to controller host
        # NOTE: ***Commented out due to above note.***
        # self.addLink( sw1, controller)
        # self.addLink( sw2, controller)

	# Add links to sender hosts
	for i in senders:
	    self.addLink( i, sw1 )

	# Add links to receiver hosts
	for i in receivers:
	    self.addLink( i, sw2 )

topos = { 'benchmark': ( lambda: BenchmarkTopo() ) }

