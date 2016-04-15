#!/usr/bin/python

"""
Create a network and start sshd on each host.

Topology: 
    10xhost(senders) --- switch --- switch 10xhost(receivers)
"""

import sys

from mininet.topo import Topo
from mininet.net import Mininet
from mininet.cli import CLI
from mininet.log import lg
from mininet.node import Node
from mininet.node import CPULimitedHost
from mininet.link import TCLink
from mininet.util import waitListening
from mininet.node import RemoteController


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
        for i in range(201,211):
            receivers.add(self.addHost('h'+str(i)))

        # Add log host
        h500 = self.addHost( 'log' )

        # Add Controller
        # NOTE: ***Don't think we need this; commented out for now.***
        # controller = self.addHost('controller')

        # Add links 
        # Switches first
        self.addLink( sw1, sw2, bw=256, delay='5ms', max_queue_size=1000 )

        # Add links to log host
        self.addLink( sw1, h500 )
        self.addLink( sw2, h500 )

        # Add links to controller host
        # NOTE: ***Commented out due to above note.***
        # self.addLink( sw1, controller)
        # self.addLink( sw2, controller)

        # Add links to sender hosts
        for i in senders:
            self.addLink( i, sw1, bw=256, delay='5ms')

        # Add links to receiver hosts
        for i in receivers:
            self.addLink( i, sw2, bw=256, delay='5ms')

topos = { 'benchmark': ( lambda: BenchmarkTopo() ) }


# here the code defining the topology ends
# the following code produces an executable script working with a remote controller
# and ssh access to the the mininet hosts from within the ubuntu vm
def setupNetwork():
    "Create network and run simple performance test"
    topo = BenchmarkTopo()
    net = Mininet(topo=topo, controller=lambda a: RemoteController( a, ip='0.0.0.0', port=6653 ), link=TCLink)
    return net


def connectToRootNS( network, switch, ip, routes ):
    """Connect hosts to root namespace via switch. Starts network.
      network: Mininet() network object
      switch: switch to connect to root namespace
      ip: IP address for root namespace node
      routes: host networks to route to"""
    # Create a node in root namespace and link to switch 0
    root = Node( 'root', inNamespace=False )
    intf = network.addLink( root, switch ).intf1
    root.setIP( ip, intf=intf )
    # Start network that now includes link to root namespace
    network.start()
    # Add routes from root ns to hosts
    for route in routes:
        root.cmd( 'route add -net ' + route + ' dev ' + str( intf ) )

def sshd( network, cmd='/usr/sbin/sshd', opts='-D',
          ip='10.231.231.1', routes=None, switch=None ):
    """Start a network, connect it to root ns, and run sshd on all hosts.
       ip: root-eth0 IP address in root namespace (10.123.123.1/32)
       routes: Mininet host networks to route to (10.0/24)
       switch: Mininet switch to connect to root namespace (s1)"""
    if not switch:
        switch = network[ 's1' ]  # switch to use
    if not routes:
        routes = [ '10.0.0.0/24' ]
    connectToRootNS( network, switch, ip, routes )
    for host in network.hosts:
        host.cmd( cmd + ' ' + opts + ' &' )
    print "*** Waiting for ssh daemons to start"
    for server in network.hosts:
        waitListening( server=server, port=22, timeout=5 )

    print
    print "*** Hosts are running sshd at the following addresses:"
    print
    for host in network.hosts:
        print host.name, host.IP()
    print
    print "*** Type 'exit' or control-D to shut down network"
    CLI( network )
    for host in network.hosts:
        host.cmd( 'kill %' + cmd )
    network.stop()


if __name__ == '__main__':
    lg.setLogLevel( 'info')
    net = setupNetwork() 
    # Add NAT connectivity
    net.addNAT().configDefault()
 
    # INSTEAD of starting here, we will use the sshd start instead:
    #net.start()
    #print "*** Hosts are running and should have internet connectivity"
    #print "*** Type 'exit' or control-D to shut down network"
    #CLI( net )
    # Shut down NAT
    #net.stop()

    # get sshd args from the command line or use default args
    # useDNS=no -u0 to avoid reverse DNS lookup timeout
    argvopts = ' '.join( sys.argv[ 1: ] ) if len( sys.argv ) > 1 else (
        '-D -o UseDNS=no -u0' )
    sshd( net, opts=argvopts )



