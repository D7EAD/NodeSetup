# Basic Tor node setup made for the kids and/or lazies ;)
# NOT TESTED ON ARCH, CENTOS, AND FEDORA

TOR_NODE_TYPE=RELAY
TOR_ORPORT=9071
TOR_CONTROLPORT=9080
TOR_NICKNAME=genericrelay
TOR_CONTACT=no_contact_info
TOR_LOCATION=/etc/tor/torrc
TOR_EXITPOLICY="reject *:*"
TOR_EXITPOLICYACCEPT="accept *:*"
TOR_BANDWIDTHMAX="4096 KBytes"
TOR_BANDWIDTHBURST="8192 KBytes"
OS_DISTRO=debian

configure:
    ifeq ($(TOR_NODE_TYPE), RELAY)
        ifeq ($(OS_DISTRO), debian)
			@echo "Setting everything up..."
			sudo apt-get install tor nyx -y
			@echo CookieAuthentication 1 > $(TOR_LOCATION)
			@echo ORPort $(TOR_ORPORT) >> $(TOR_LOCATION)
			@echo ControlPort $(TOR_CONTROLPORT) >> $(TOR_LOCATION)
			@echo Nickname $(TOR_NICKNAME) >> $(TOR_LOCATION)
			@echo Exitpolicy $(TOR_EXITPOLICY) >> $(TOR_LOCATION)
			@echo ContactInfo $(TOR_CONTACT) >> $(TOR_LOCATION)
			@echo RelayBandwidthRate $(TOR_BANDWIDTHMAX) >> $(TOR_LOCATION)
			@echo RelayBandwidthBurst $(TOR_BANDWIDTHBURST) >> $(TOR_LOCATION)
			@sudo systemctl restart tor
			@clear
			@echo "Setup complete! If all went well, you may now run <nyx> to monitor your node!"
        endif
        ifeq ($(OS_DISTRO), arch)
			@echo "Setting everything up..."
			sudo pacman -S tor torsocks obfsproxy nyx -y
			@echo CookieAuthentication 1 > $(TOR_LOCATION)
			@echo ORPort $(TOR_ORPORT) >> $(TOR_LOCATION)
			@echo ControlPort $(TOR_CONTROLPORT) >> $(TOR_LOCATION)
			@echo Nickname $(TOR_NICKNAME) >> $(TOR_LOCATION)
			@echo Exitpolicy $(TOR_EXITPOLICY) >> $(TOR_LOCATION)
			@echo ContactInfo $(TOR_CONTACT) >> $(TOR_LOCATION)
			@echo RelayBandwidthRate $(TOR_BANDWIDTHMAX) >> $(TOR_LOCATION)
			@echo RelayBandwidthBurst $(TOR_BANDWIDTHBURST) >> $(TOR_LOCATION)
			@sudo systemctl restart tor
			@clear
			@echo "Setup complete! If all went well, you may now run <nyx> to monitor your node!"
        endif
        ifeq ($(OS_DISTRO), centos)
			@echo "Setting everything up..."
			sudo yum install tor nyx -y
			@echo CookieAuthentication 1 > $(TOR_LOCATION)
			@echo ORPort $(TOR_ORPORT) >> $(TOR_LOCATION)
			@echo ControlPort $(TOR_CONTROLPORT) >> $(TOR_LOCATION)
			@echo Nickname $(TOR_NICKNAME) >> $(TOR_LOCATION)
			@echo Exitpolicy $(TOR_EXITPOLICY) >> $(TOR_LOCATION)
			@echo ContactInfo $(TOR_CONTACT) >> $(TOR_LOCATION)
			@echo RelayBandwidthRate $(TOR_BANDWIDTHMAX) >> $(TOR_LOCATION)
			@echo RelayBandwidthBurst $(TOR_BANDWIDTHBURST) >> $(TOR_LOCATION)
			@sudo systemctl restart tor
			@clear			
			@echo "Setup complete! If all went well, you may now run <nyx> to monitor your node!"
        endif
        ifeq ($(OS_DISTRO), fedora)
			@echo "Setting everything up..."
			sudo dnf install tor nyx -y
			@echo CookieAuthentication 1 > $(TOR_LOCATION)
			@echo ORPort $(TOR_ORPORT) >> $(TOR_LOCATION)
			@echo ControlPort $(TOR_CONTROLPORT) >> $(TOR_LOCATION)
			@echo Nickname $(TOR_NICKNAME) >> $(TOR_LOCATION)
			@echo Exitpolicy $(TOR_EXITPOLICY) >> $(TOR_LOCATION)
			@echo ContactInfo $(TOR_CONTACT) >> $(TOR_LOCATION)
			@echo RelayBandwidthRate $(TOR_BANDWIDTHMAX) >> $(TOR_LOCATION)
			@echo RelayBandwidthBurst $(TOR_BANDWIDTHBURST) >> $(TOR_LOCATION)
			@sudo systemctl restart tor
			@clear
			@echo "Setup complete! If all went well, you may now run <nyx> to monitor your node!"
        endif
    endif
    ifeq ($(TOR_NODE_TYPE), BRIDGE)
        ifeq ($(OS_DISTRO), debian)
			@echo "Setting everything up..."
			sudo apt-get install tor nyx -y
			@echo CookieAuthentication 1 > $(TOR_LOCATION)
			@echo ORPort $(TOR_ORPORT) >> $(TOR_LOCATION)
			@echo ControlPort $(TOR_CONTROLPORT) >> $(TOR_LOCATION)
			@echo Nickname $(TOR_NICKNAME) >> $(TOR_LOCATION)
			@echo Exitpolicy $(TOR_EXITPOLICY) >> $(TOR_LOCATION)			
			@echo BridgeRelay 1 >> $(TOR_LOCATION)
			@echo ContactInfo $(TOR_CONTACT) >> $(TOR_LOCATION)
			@echo RelayBandwidthRate $(TOR_BANDWIDTHMAX) >> $(TOR_LOCATION)
			@echo RelayBandwidthBurst $(TOR_BANDWIDTHBURST) >> $(TOR_LOCATION)
			@sudo systemctl restart tor
			@clear
			@echo "Setup complete! If all went well, you may now run <nyx> to monitor your node!"
        endif
        ifeq ($(OS_DISTRO), arch)
			@echo "Setting everything up..."			
			sudo pacman -S tor torsocks obfsproxy nyx -y	
			@echo CookieAuthentication 1 > $(TOR_LOCATION)
			@echo ORPort $(TOR_ORPORT) >> $(TOR_LOCATION)
			@echo ControlPort $(TOR_CONTROLPORT) >> $(TOR_LOCATION)
			@echo Nickname $(TOR_NICKNAME) >> $(TOR_LOCATION)
			@echo Exitpolicy $(TOR_EXITPOLICY) >> $(TOR_LOCATION)
			@echo BridgeRelay 1 >> $(TOR_LOCATION)			
			@echo ContactInfo $(TOR_CONTACT) >> $(TOR_LOCATION)
			@echo RelayBandwidthRate $(TOR_BANDWIDTHMAX) >> $(TOR_LOCATION)
			@echo RelayBandwidthBurst $(TOR_BANDWIDTHBURST) >> $(TOR_LOCATION)
			@sudo systemctl restart tor
			@clear
			@echo "Setup complete! If all went well, you may now run <nyx> to monitor your node!"
        endif
        ifeq ($(OS_DISTRO), centos)
			@echo "Setting everything up..."
			sudo yum install tor nyx -y
			@echo CookieAuthentication 1 > $(TOR_LOCATION)
			@echo ORPort $(TOR_ORPORT) >> $(TOR_LOCATION)
			@echo ControlPort $(TOR_CONTROLPORT) >> $(TOR_LOCATION)
			@echo Nickname $(TOR_NICKNAME) >> $(TOR_LOCATION)
			@echo Exitpolicy $(TOR_EXITPOLICY) >> $(TOR_LOCATION)
			@echo BridgeRelay 1 >> $(TOR_LOCATION)
			@echo ContactInfo $(TOR_CONTACT) >> $(TOR_LOCATION)
			@echo RelayBandwidthRate $(TOR_BANDWIDTHMAX) >> $(TOR_LOCATION)
			@echo RelayBandwidthBurst $(TOR_BANDWIDTHBURST) >> $(TOR_LOCATION)
			@sudo systemctl restart tor
			@clear
			@echo "Setup complete! If all went well, you may now run <nyx> to monitor your node!"
        endif
        ifeq ($(OS_DISTRO), fedora)
			@echo "Setting everything up..."
			sudo dnf install tor nyx -y
			@echo CookieAuthentication 1 > $(TOR_LOCATION)
			@echo ORPort $(TOR_ORPORT) >> $(TOR_LOCATION)
			@echo ControlPort $(TOR_CONTROLPORT) >> $(TOR_LOCATION)
			@echo Nickname $(TOR_NICKNAME) >> $(TOR_LOCATION)
			@echo Exitpolicy $(TOR_EXITPOLICY) >> $(TOR_LOCATION)
			@echo BridgeRelay 1 >> $(TOR_LOCATION)
			@echo ContactInfo $(TOR_CONTACT) >> $(TOR_LOCATION)
			@echo RelayBandwidthRate $(TOR_BANDWIDTHMAX) >> $(TOR_LOCATION)
			@echo RelayBandwidthBurst $(TOR_BANDWIDTHBURST) >> $(TOR_LOCATION)
			@sudo systemctl restart tor
			@clear
			@echo "Setup complete! If all went well, you may now run <nyx> to monitor your node!"
        endif
    endif
    ifeq ($(TOR_NODE_TYPE), EXIT)
        ifeq ($(OS_DISTRO), debian)
			@echo "Setting everything up..."
			sudo apt-get install tor nyx -y
			@echo CookieAuthentication 1 > $(TOR_LOCATION)
			@echo ORPort $(TOR_ORPORT) >> $(TOR_LOCATION)
			@echo ControlPort $(TOR_CONTROLPORT) >> $(TOR_LOCATION)
			@echo Nickname $(TOR_NICKNAME) >> $(TOR_LOCATION)
			@echo Exitpolicy $(TOR_EXITPOLICYACCEPT) >> $(TOR_LOCATION)
			@echo ExitRelay 1 >> $(TOR_LOCATION)	
			@echo ContactInfo $(TOR_CONTACT) >> $(TOR_LOCATION)
			@echo RelayBandwidthRate $(TOR_BANDWIDTHMAX) >> $(TOR_LOCATION)
			@echo RelayBandwidthBurst $(TOR_BANDWIDTHBURST) >> $(TOR_LOCATION)
			@sudo systemctl restart tor
			@clear
			@echo "Setup complete! If all went well, you may now run <nyx> to monitor your node!"
        endif
        ifeq ($(OS_DISTRO), arch)
			@echo "Setting everything up..."
			sudo pacman -S tor torsocks obfsproxy nyx -y
			@echo CookieAuthentication 1 > $(TOR_LOCATION)
			@echo ORPort $(TOR_ORPORT) >> $(TOR_LOCATION)
			@echo ControlPort $(TOR_CONTROLPORT) >> $(TOR_LOCATION)
			@echo Nickname $(TOR_NICKNAME) >> $(TOR_LOCATION)
			@echo Exitpolicy $(TOR_EXITPOLICYACCEPT) >> $(TOR_LOCATION)
			@echo ExitRelay 1 >> $(TOR_LOCATION)
			@echo ContactInfo $(TOR_CONTACT) >> $(TOR_LOCATION)
			@echo RelayBandwidthRate $(TOR_BANDWIDTHMAX) >> $(TOR_LOCATION)
			@echo RelayBandwidthBurst $(TOR_BANDWIDTHBURST) >> $(TOR_LOCATION)
			@sudo systemctl restart tor
			@clear
			@echo "Setup complete! If all went well, you may now run <nyx> to monitor your node!"
        endif
        ifeq ($(OS_DISTRO), centos)
			@echo "Setting everything up..."
			sudo yum install tor nyx -y
			@echo CookieAuthentication 1 > $(TOR_LOCATION)
			@echo ORPort $(TOR_ORPORT) >> $(TOR_LOCATION)
			@echo ControlPort $(TOR_CONTROLPORT) >> $(TOR_LOCATION)
			@echo Nickname $(TOR_NICKNAME) >> $(TOR_LOCATION)
			@echo Exitpolicy $(TOR_EXITPOLICYACCEPT) >> $(TOR_LOCATION)
			@echo ExitRelay 1 >> $(TOR_LOCATION)		
			@echo ContactInfo $(TOR_CONTACT) >> $(TOR_LOCATION)
			@echo RelayBandwidthRate $(TOR_BANDWIDTHMAX) >> $(TOR_LOCATION)
			@echo RelayBandwidthBurst $(TOR_BANDWIDTHBURST) >> $(TOR_LOCATION)
			@sudo systemctl restart tor
			@clear
			@echo "Setup complete! If all went well, you may now run <nyx> to monitor your node!"
        endif
        ifeq ($(OS_DISTRO), fedora)
			@echo "Setting everything up..."
			sudo dnf install tor nyx -y
			@echo CookieAuthentication 1 > $(TOR_LOCATION)
			@echo ORPort $(TOR_ORPORT) >> $(TOR_LOCATION)
			@echo ControlPort $(TOR_CONTROLPORT) >> $(TOR_LOCATION)
			@echo Nickname $(TOR_NICKNAME) >> $(TOR_LOCATION)
			@echo Exitpolicy $(TOR_EXITPOLICYACCEPT) >> $(TOR_LOCATION)
			@echo ExitRelay 1 >> $(TOR_LOCATION)
			@echo ContactInfo $(TOR_CONTACT) >> $(TOR_LOCATION)
			@echo RelayBandwidthRate $(TOR_BANDWIDTHMAX) >> $(TOR_LOCATION)
			@echo RelayBandwidthBurst $(TOR_BANDWIDTHBURST) >> $(TOR_LOCATION)
			@sudo systemctl restart tor
			@clear
			@echo "Setup complete! If all went well, you may now run <nyx> to monitor your node!"
        endif
    endif
