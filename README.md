# NodeSetup
NodeSetup is a quick and efficient means of setting up a basically-formatted and operational Tor node. It supports the setup of relay, bridge, and exit nodes.

This tool depends on make and sudo, so be sure to have these installed as NodeSetup will not do *everything* for you. ;)

<br/>

# Syntax / Parameters
NodeSetup can be run in its root directory in the following way:
    make [options]

NodeSetup has the following parameters which can be used in the [options] syntactical placement:
  - TOR_NODE_TYPE        : has values [RELAY, EXIT, BRIDGE] (default RELAY)
  - TOR_ORPORT           : integer value (default 9071)
  - TOR_CONTROLPORT      : integer value (default 9080)
  - TOR_NICKNAME         : string value (default "genericrelay")
  - TOR_CONTACT          : string value (default "no_contact_info")
  - TOR_LOCATION         : path value   (default /etc/tor/torrc)
  - TOR_EXITPOLICY       : string value (default "reject *:*")
  - TOR_EXITPOLICYACCEPT : string value (default "accept *:*")
  - TOR_BANDWIDTHMAX     : string value (default "4096 KBytes")
  - TOR_BANDWIDTHBURST   : string value (default "8192 KBytes")
  - OS_DISTRO            : has values [debian, centos, fedora, arch] (default debian)
