# NodeSetup
NodeSetup is a quick and efficient means of setting up a basically-formatted and operational Tor node. It supports the setup of relay, bridge, and exit nodes.

This tool depends on make and sudo, so be sure to have these installed as NodeSetup will not do *everything* for you. ;)

<br/>

# Syntax / Parameters
NodeSetup can be run in its root directory in the following way: <b>make [option=value, option=value, ...]</b>

NodeSetup has the following parameters which can be used in the [options] syntactical placement:
  - TOR_NODE_TYPE        : has values [RELAY, EXIT, BRIDGE] (default RELAY)
  - TOR_ORPORT           : integer value (default 9071)
  - TOR_CONTROLPORT      : integer value (default 9080)
  - TOR_NICKNAME         : string value (default "genericrelay")
  - TOR_CONTACT          : string value (default "no_contact_info")
  - TOR_LOCATION         : path value   (default /etc/tor/torrc)
  - TOR_EXITPOLICY       : string value (default "reject \*:\*")
  - TOR_EXITPOLICYACCEPT : string value (default "accept \*:\*")
  - TOR_BANDWIDTHMAX     : string value (default "4096 KBytes")
  - TOR_BANDWIDTHBURST   : string value (default "8192 KBytes")
  - OS_DISTRO            : has values [debian, centos, fedora, arch] (default debian)
  
<br/>

# Examples
Create exit node:
  - make TOR_NODE_TYPE=EXIT
  
Create relay node with rate of 15 MB and burst of 30 MB:
  - make TOR_BANDWIDTHMAX="15 MBytes" TOR_BANDWIDTHBURST="30 MBytes"
  
Create relay with nickname and contact info:
  - make TOR_NICKNAME="coolrelay" TOR_CONTACT="johndoe@johndoebusiness.org"
  
Create relay on specified distribution:
  - make OS_DISTRO=centos

<br/>

# Notes
NodeSetup has only been tested on the Debian distribution and not CentOS, Fedora, or Arch. Since I am a Debian nerd, I will leave any reporting of misconfigured distro-oriented Makefile calls up to the users. I will gladly fix them for anyone who reports, as privacy is very important!
