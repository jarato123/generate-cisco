#!/bin/bash

# -------------- Declare Variables --------------
hostname="location-core-3850x"
password="password"
data="00.00"
voice="00.00"
vlan100="00.00"
ospf="00.00"
route="00.00"
RO="ReadOnlyString"
RW="ReadWriteString"
location="PhysicalLoaction"
host="snmpHostString"
tacas="tacasKey"
vty="vtyPasswords"
needNTP="n"
ntp1="10.9.30.6"
ntp2="10.9.30.7"
ntp3="10.7.30.6"
ntp4="10.7.30.7"
stack="2"
uplink="1"
uplink1="n"
uplink2="n"
uplink3="n"
uplink4="n"
uplink5="n"
uplink6="n"
uplink7="n"
uplink8="n"

# -------------- Declare Functions --------------
interfacesSwitch2() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt

	echo "int range gi2/0/1-48" | sudo tee -a ~/Network/$hostname.txt
	echo "description OfficeDataVoice" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport access vlan 10" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode access" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport voice vlan 20" | sudo tee -a ~/Network/$hostname.txt
	echo "trust device cisco-phone" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos voip cisco-phone" | sudo tee -a ~/Network/$hostname.txt
	echo "spanning-tree portfast" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-CiscoPhone-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt

	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt

	echo "Will there be uplinks on Switch 2? (y/n):"
	read uplink2

	# ------ Error Checking of y/n from answers ------
	if [ $uplink2 != n ]; then
		if [ $uplink2 != y ]; then
			echo "Please use only a lower case y or n, Will there be uplinks on this switch:"
			read uplink2
		fi
	fi
}

interfacesSwitch3() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt

	echo "int range gi3/0/1-48" | sudo tee -a ~/Network/$hostname.txt
	echo "description OfficeDataVoice" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport access vlan 10" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode access" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport voice vlan 20" | sudo tee -a ~/Network/$hostname.txt
	echo "trust device cisco-phone" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos voip cisco-phone" | sudo tee -a ~/Network/$hostname.txt
	echo "spanning-tree portfast" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-CiscoPhone-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt

	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt

	echo "Will there be uplinks on Switch 3? (y/n):"
	read uplink3

	# ------ Error Checking of y/n from answers ------
	if [ $uplink3 != n ]; then
		if [ $uplink3 != y ]; then
			echo "Please use only a lower case y or n, Will there be uplinks on this switch:"
			read uplink3
		fi
	fi
}

interfacesSwitch4() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt

	echo "int range gi4/0/1-48" | sudo tee -a ~/Network/$hostname.txt
	echo "description OfficeDataVoice" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport access vlan 10" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode access" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport voice vlan 20" | sudo tee -a ~/Network/$hostname.txt
	echo "trust device cisco-phone" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos voip cisco-phone" | sudo tee -a ~/Network/$hostname.txt
	echo "spanning-tree portfast" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-CiscoPhone-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt

	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt

	echo "Will there be uplinks on Switch 4? (y/n):"
	read uplink4

	# ------ Error Checking of y/n from answers ------
	if [ $uplink4 != n ]; then
		if [ $uplink4 != y ]; then
			echo "Please use only a lower case y or n, Will there be uplinks on this switch:"
			read uplink4
		fi
	fi
}

interfacesSwitch5() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt

	echo "int range gi5/0/1-48" | sudo tee -a ~/Network/$hostname.txt
	echo "description OfficeDataVoice" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport access vlan 10" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode access" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport voice vlan 20" | sudo tee -a ~/Network/$hostname.txt
	echo "trust device cisco-phone" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos voip cisco-phone" | sudo tee -a ~/Network/$hostname.txt
	echo "spanning-tree portfast" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-CiscoPhone-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt

	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt

	echo "Will there be uplinks on Switch 5? (y/n):"
	read uplink5

	# ------ Error Checking of y/n from answers ------
	if [ $uplink5 != n ]; then
		if [ $uplink5 != y ]; then
			echo "Please use only a lower case y or n, Will there be uplinks on this switch:"
			read uplink5
		fi
	fi
}

interfacesSwitch6() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt

	echo "int range gi6/0/1-48" | sudo tee -a ~/Network/$hostname.txt
	echo "description OfficeDataVoice" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport access vlan 10" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode access" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport voice vlan 20" | sudo tee -a ~/Network/$hostname.txt
	echo "trust device cisco-phone" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos voip cisco-phone" | sudo tee -a ~/Network/$hostname.txt
	echo "spanning-tree portfast" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-CiscoPhone-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt

	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt

	echo "Will there be uplinks on Switch 6? (y/n):"
	read uplink6

	# ------ Error Checking of y/n from answers ------
	if [ $uplink6 != n ]; then
		if [ $uplink6 != y ]; then
			echo "Please use only a lower case y or n, Will there be uplinks on this switch:"
			read uplink6
		fi
	fi
}

interfacesSwtich7() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt

	echo "int range gi7/0/1-48" | sudo tee -a ~/Network/$hostname.txt
	echo "description OfficeDataVoice" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport access vlan 10" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode access" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport voice vlan 20" | sudo tee -a ~/Network/$hostname.txt
	echo "trust device cisco-phone" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos voip cisco-phone" | sudo tee -a ~/Network/$hostname.txt
	echo "spanning-tree portfast" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-CiscoPhone-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt

	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt

	echo "Will there be uplinks on Switch 7? (y/n):"
	read uplink7

	# ------ Error Checking of y/n from answers ------
	if [ $uplink7 != n ]; then
		if [ $uplink7 != y ]; then
			echo "Please use only a lower case y or n, Will there be uplinks on this switch:"
			read uplink7
		fi
	fi
}

interfacesSwitch8() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt

	echo "int range gi8/0/1-48" | sudo tee -a ~/Network/$hostname.txt
	echo "description OfficeDataVoice" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport access vlan 10" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode access" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport voice vlan 20" | sudo tee -a ~/Network/$hostname.txt
	echo "trust device cisco-phone" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos voip cisco-phone" | sudo tee -a ~/Network/$hostname.txt
	echo "spanning-tree portfast" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-CiscoPhone-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt

	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt

	echo "Will there be uplinks on Switch 8? (y/n):"
	read uplink8

	# ------ Error Checking of y/n from answers ------
	if [ $uplink8 != n ]; then
		if [ $uplink8 != y ]; then
			echo "Please use only a lower case y or n, Will there be uplinks on this switch:"
			read uplink8
		fi
	fi
}

1gigUplinkSwitch1() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "interface range GigabitEthernet1/1/1-4" | sudo tee -a ~/Network/$hostname.txt
	echo "description Uplink to IDF" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode trunk" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos trust" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-Trust-Cos-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt
}

1gigUplinkSwitch2() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "interface range GigabitEthernet2/1/1-4" | sudo tee -a ~/Network/$hostname.txt
	echo "description Uplink to IDF" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode trunk" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos trust" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-Trust-Cos-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt
}

1gigUplinkSwitch3() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "interface range GigabitEthernet3/1/1-4" | sudo tee -a ~/Network/$hostname.txt
	echo "description Uplink to IDF" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode trunk" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos trust" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-Trust-Cos-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt
}

1gigUplinkSwitch4() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "interface range GigabitEthernet4/1/1-4" | sudo tee -a ~/Network/$hostname.txt
	echo "description Uplink to IDF" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode trunk" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos trust" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-Trust-Cos-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt
}

1gigUplinkSwitch5() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "interface range GigabitEthernet5/1/1-4" | sudo tee -a ~/Network/$hostname.txt
	echo "description Uplink to IDF" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode trunk" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos trust" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-Trust-Cos-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt
}

1gigUplinkSwitch6() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "interface range GigabitEthernet6/1/1-4" | sudo tee -a ~/Network/$hostname.txt
	echo "description Uplink to IDF" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode trunk" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos trust" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-Trust-Cos-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt
}

1gigUplinkSwitch7() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "interface range GigabitEthernet7/1/1-4" | sudo tee -a ~/Network/$hostname.txt
	echo "description Uplink to IDF" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode trunk" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos trust" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-Trust-Cos-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt
}

1gigUplinkSwitch8() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "interface range GigabitEthernet8/1/1-4" | sudo tee -a ~/Network/$hostname.txt
	echo "description Uplink to IDF" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode trunk" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos trust" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-Trust-Cos-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt
}

10gigUplinkSwitch1() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "interface range TenGigabitEthernet1/1/1-4" | sudo tee -a ~/Network/$hostname.txt
	echo "description Uplink to IDF" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode trunk" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos trust" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-Trust-Cos-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt
}

10gigUplinkSwitch2() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "interface range TenGigabitEthernet2/1/1-4" | sudo tee -a ~/Network/$hostname.txt
	echo "description Uplink to IDF" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode trunk" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos trust" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-Trust-Cos-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt
}

10gigUplinkSwitch3() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "interface range TenGigabitEthernet3/1/1-4" | sudo tee -a ~/Network/$hostname.txt
	echo "description Uplink to IDF" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode trunk" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos trust" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-Trust-Cos-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt
}

10gigUplinkSwitch4() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "interface range TenGigabitEthernet4/1/1-4" | sudo tee -a ~/Network/$hostname.txt
	echo "description Uplink to IDF" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode trunk" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos trust" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-Trust-Cos-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt
}

10gigUplinkSwitch5() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "interface range TenGigabitEthernet5/1/1-4" | sudo tee -a ~/Network/$hostname.txt
	echo "description Uplink to IDF" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode trunk" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos trust" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-Trust-Cos-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt
}

10gigUplinkSwitch6() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "interface range TenGigabitEthernet6/1/1-4" | sudo tee -a ~/Network/$hostname.txt
	echo "description Uplink to IDF" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode trunk" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos trust" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-Trust-Cos-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt
}

10gigUplinkSwitch7() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "interface range TenGigabitEthernet7/1/1-4" | sudo tee -a ~/Network/$hostname.txt
	echo "description Uplink to IDF" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode trunk" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos trust" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-Trust-Cos-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt
}

10gigUplinkSwitch8() {
	echo "!" | sudo tee -a ~/Network/$hostname.txt
	echo "interface range TenGigabitEthernet8/1/1-4" | sudo tee -a ~/Network/$hostname.txt
	echo "description Uplink to IDF" | sudo tee -a ~/Network/$hostname.txt
	echo "switchport mode trunk" | sudo tee -a ~/Network/$hostname.txt
	echo "auto qos trust" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy input AutoQos-4.0-Trust-Cos-Input-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "service-policy output AutoQos-4.0-Output-Policy" | sudo tee -a ~/Network/$hostname.txt
	echo "!" | sudo tee -a ~/Network/$hostname.txt
}


# -------------- Take Input --------------
echo "Please authenticate with your sudo password"
sudo -v

# ------ Read Hostname -------
echo "Please Enter the hostname for this switch"
read hostname

# ------ Read Password -------
echo "What is the Password for this switch:"
read password

password1="enable secret 4 $password"
password2="username lanwan privilege 15 secret $password "

# ------ Read Data IP Range -------
echo "What are the middle two Octets of the Data Range for this site (ex: 25.12):"
read data

# ------ Read Voice IP Range -------
echo "What are the middle two Octets of the Voice Range for this site (ex: 26.12):"
read voice

# ------ Read OSPF -------
echo "What are the middle two Octets for the OSPF Area(ex: 201.68):"
read ospf

# ------ Read Default Route -------
echo "What are the last two Octets of the default Route for this site (ex: 201.69):"
read route

# ------ Read Uplink IP -------
echo "What are the last two Octets the IP Address of the Uplink to the Router, vlan 100 (ex: 201.70): "
read vlan100

# ------ Read SNMP R/O String -------
echo "What is the snmp R/O string:"
read RO

# ------ Read SNMP R/W String -------
echo "what is the snmp R/W string:"
read RW

# ------ Read SNMP Location -------
echo "what is the snmp location:"
read location

# ------ Read SNMP Host -------
echo "what is the snmp host string:"
read host

# ------ Read TACAS Key -------
echo "what is the tacas server key:"
read tacas

# ------ Read VTY Password -------
echo "what is the VTY line password:"
read vty

# ------ Read NTP -------
echo "By Default the NTP Servers are: "
echo "   " $ntp1
echo "   " $ntp2
echo "   " $ntp3
echo "   " $ntp4

echo "Do you need to change these (y/n):"
read needNTP

	# ------ Error Checking of y/n from answers ------
	if [ $needNTP != n ]; then
		if [ $needNTP != y ]; then
			echo "Please use only a lower case y or n"
			echo "Do you need to change these (y/n):"
			read needNTP
		fi
	fi

if [ $needNTP = "y" ]; then
	echo "what is 1st ntp server:"
	read ntp1

	echo "what is the 2nd ntp server:"
	read ntp2

	echo "what is the 3rd ntp server:"
	read ntp3

	echo "what is the 4th ntp server:"
	read ntp4
fi

# ------ Read Number in Stack -------
echo "How Many Switches are in this stack (can have up to 8 switch in stack): "
read stack

	# ------ Error Checking of 1-8 from answers ------
	if [ $stack != 1 ]; then
		if [ $stack != 2 ]; then
			if [ $stack != 3 ]; then
				if [ $stack != 4 ]; then
					if [ $stack != 5 ]; then
						if [ $stack != 6 ]; then
							if [ $stack != 7 ]; then
								if [ $stack != 8 ]; then
									echo "Please enter in 1 - 8 only, How many switches are in this stack: "
									read stack
								fi
							fi
						fi
					fi
				fi
			fi
		fi
	fi

# ------ Read Uplinks 1 Gig or 10 Gig -------
echo "Using 1 Gig or 10 Gig Uplinks (1 or 10):"
read uplink

	# ------ Error Checking of 1 or 10 from answers ------
	if [ $uplink != "1" ]; then
		if [ $uplink != "10" ]; then
			echo "Please enter in only 1 or 10, Will you be using 1 or 10 Gig Uplinks:"
			read uplink
		fi
	fi

# ------ Print Variables ------
echo " "
echo "--------------------------------------------------"
echo "The Hostname of the Switch is: " $hostname
echo "The Password for the Switch is: " $password
echo "The Data Range of the Switch is: 10." $data ".0/24"
echo "The Voice Range of the Switch is: 10." $voice ".0/24"
echo "The IP of the Uplink is: 192.168." $vlan100
echo "The IP Range for the OSPF AREA is: 192.168." $ospf
echo "The Default Route is: 192.168." $route
echo "The SNMP Read Only String is: " $RO
echo "The SNMP Read Write String is: " $RW
echo "The SNMP Location is: " $location
echo "The SNMP Host string is: " $host
echo "The TACAS Key is: " $tacas
echo "The password for the VTY lines is: " $vty
echo "The Primary NTP Server is: " $ntp1
echo "The Secondary NTP Server is: " $ntp2
echo "The Tertiary NTP Server is: " $ntp3
echo "The Quaternary NTP Server is: " $ntp4
echo "There are " $stack " Switches in the Stack"
echo "The switch uses " $uplink " Gig uplinks"
echo "--------------------------------------------------"
echo " "

# ------ Read Config Correct y/n ------
echo "Do these settings look correct (y/n)"
read set

	# ------ Error Checking of y/n from answers ------
	if [ $set != n ]; then
		if [ $set != y ]; then
			echo "Please use only a lower case y or n"
			echo "Do these settings look correct (y/n)"
			read set
		fi
	fi

if [ $set = "n" ]; then
	echo "The script will now terminate please restart it to enter the updated information!!!"
fi

# ------ Create Git Repo ------
echo "Do you want to create a Git Branch for this config (y/n):"
read git

# ------ Error Checking of y/n from answers ------
if [ $git != n ]; then
	if [ $git != y ]; then
		echo "Please use only a lower case y or n"
		echo "Do you want to create a Git Branch for this config (y/n):"
		read git
	fi
fi

# ------------------------- Write Changes -------------------------
if [ $set = "y" ]; then
	# ------ Create File from Hostname -------
	cp ~/Network/3850x-Base.txt $hostname.txt

	# ------ Change Hostname -------
	echo "hostname" $hostname | sudo tee -a ~/Network/$hostname.txt

	# ------ Change Password -------
	sed -i -e 's/enable secret 4 {password}/'"$password1"'/g' ~/Network/$hostname.txt
	sed -i -e 's/username lanwan privilege 15 secret {password}/'"$password2"'/g' ~/Network/$hostname.txt

	# ------ Change Data IP Range -------
	#sed -i -e 's/ip dhcp excluded-address 10{.xD.x.}1 10{.xD.x.}50/ip dhcp excluded-address 10.'"$data"'.1 10.'"$data"'.50/g' ~/Network/$hostname.txt
	sed -i -e 's/ip dhcp excluded-address 10{.xD.x.}1 10{.xD.x.}50/!/g' ~/Network/$hostname.txt
	#sed -i -e 's/ip dhcp excluded-address 10{.xD.x.}251 10{.xD.x.}255/ip dhcp excluded-address 10.'"$data"'.251 10.'"$data"'.255/g' ~/Network/$hostname.txt
	sed -i -e 's/ip dhcp excluded-address 10{.xD.x.}251 10{.xD.x.}255/!/g' ~/Network/$hostname.txt
	sed -i -e 's/default-router 10{.xD.x.}1/default-router 10.'"$data"'.1/g' ~/Network/$hostname.txt
	sed -i -e 's/ip address 10{.xD.x.}1 255.255.255.0/ip address 10.'"$data"'.1 255.255.255.0/g' ~/Network/$hostname.txt

	# ------ Change Voice IP Range -------
	sed -i -e 's/network 10{.xV.x.}0 255.255.255.0/network 10.'"$voice"'.0 255.255.255.0/g' ~/Network/$hostname.txt
	sed -i -e 's/ip address 10{.xV.x.}1 255.255.255.0/ip address 10.'"$voice"'.1 255.255.255.0/g' ~/Network/$hostname.txt

	# ------ Change OSPF -------
	sed -i -e 's/network 192.168{.20x.xR} 0.0.0.3 area 0/network 192.168.'"$ospf"' 0.0.0.3 area 0/g' ~/Network/$hostname.txt

	# ------ Change Default Route -------
	sed -i -e 's/ip route 0.0.0.0 0.0.0.0 192.168{.20x.xS} 150/ip route 0.0.0.0 0.0.0.0 192.168.'"$route"' 150/g' ~/Network/$hostname.txt

	# ------ Change Uplink IP -------
	sed -i -e 's/ip address 192.168{.20x.x} 255.255.255.252/ip address 192.168.'"$vlan100"' 255.255.255.252/g' ~/Network/$hostname.txt

	# ------ Change SNMP R/O String -------
	sed -i -e 's/snmp-server community {RO} RO/snmp-server community '"$RO"' RO/g' ~/Network/$hostname.txt

	# ------ Change SNMP R/W String -------
	sed -i -e 's/snmp-server community {RW} RW/snmp-server community '"$RW"' RW/g' ~/Network/$hostname.txt

	# ------ Change SNMP Location -------
	sed -i -e 's/snmp-server location {Location}/snmp-server location '"$location"'/g' ~/Network/$hostname.txt

	# ------ Change SNMP Host -------
	sed -i -e 's/snmp-server host 10.9.30.73 version 2c {HOST}/snmp-server host 10.9.30.73 version 2c '"$host"'/g' ~/Network/$hostname.txt
	sed -i -e 's/snmp-server host 10.9.30.93 version 2c {HOST}/snmp-server host 10.9.30.93 version 2c '"$host"'/g' ~/Network/$hostname.txt
	sed -i -e 's/snmp-server host 10.9.30.94 version 2c {HOST}/snmp-server host 10.9.30.94 version 2c '"$host"'/g' ~/Network/$hostname.txt
	sed -i -e 's/snmp-server host 10.9.30.95 version 2c {HOST}/snmp-server host 10.9.30.95 version 2c '"$host"'/g' ~/Network/$hostname.txt

	# ------ Change Tacas Key -------
	sed -i -e 's/aaa authentication login default gtacacs-server key 7 {tacas} up tacacs+ local/aaa authentication login default gtacacs-server key 7 '"$tacas"' up tacacs+ local/g' ~/Network/$hostname.txt
	sed -i -e 's/tacacs-server key 7 {tacas}/tacacs-server key 7 '"$tacas"'/g' ~/Network/$hostname.txt

	# ------ Change NTP -------
	sed -i -e 's/ntp server {ntp}/ntp server '"$ntp1"' '"$ntp2"' '"$ntp3"' '"$ntp4"'/g' ~/Network/$hostname.txt

	# ------ Change VTY Password -------
	sed -i -e 's/password 7 {local pass}/password 7 '"$vty"'/g' ~/Network/$hostname.txt

	# ------ Change Stack -------
	if [ $stack != 1 ]; then
		if [ $stack = 2 ]; then
			interfacesSwitch2
		fi

		if [ $stack = 3 ]; then
			interfacesSwitch2
			interfacesSwitch3
		fi

		if [ $stack = 4 ]; then
			interfacesSwitch2
			interfacesSwitch3
			interfacesSwitch4
  	fi

		if [ $stack = 5 ]; then
			interfacesSwitch2
			interfacesSwitch3
			interfacesSwitch4
			interfacesSwitch5
  	fi

		if [ $stack = 6 ]; then
			interfacesSwitch2
			interfacesSwitch3
			interfacesSwitch4
			interfacesSwitch5
			interfacesSwitch6
		fi

		if [ $stack = 7 ]; then
			interfacesSwitch2
			interfacesSwitch3
			interfacesSwitch4
			interfacesSwitch5
			interfacesSwitch6
			interfacesSwtich7
		fi

		if [ $stack = 8 ]; then
			interfacesSwitch2
			interfacesSwitch3
			interfacesSwitch4
			interfacesSwitch5
			interfacesSwitch6
			interfacesSwtich7
			interfacesSwitch8
		fi
	fi

	# ------ Change Uplinks -------
	if [ $uplink = 1 ]; then
		1gigUplinkSwitch1

		if [ $uplink2 = y ]; then
			1gigUplinkSwitch2
		fi

		if [ $uplink3 = y ]; then
			1gigUplinkSwitch3
		fi

		if [ $uplink4 = y ]; then
			1gigUplinkSwitch4
		fi

		if [ $uplink5 = y ]; then
			1gigUplinkSwitch5
		fi

		if [ $uplink6 = y ]; then
			1gigUplinkSwitch6
		fi

		if [ $uplink7 = y ]; then
			1gigUplinkSwitch7
		fi

		if [ $uplink8 = y ]; then
			1gigUplinkSwitch8
		fi
	fi

	if [ $uplink = 10 ]; then
		10gigUplinkSwitch1

		if [ $uplink2 = y ]; then
			10gigUplinkSwitch2
		fi

		if [ $uplink3 = y ]; then
			10gigUplinkSwitch3
		fi

		if [ $uplink4 = y ]; then
			10gigUplinkSwitch4
		fi

		if [ $uplink5 = y ]; then
			10gigUplinkSwitch5
		fi

		if [ $uplink6 = y ]; then
			10gigUplinkSwitch6
		fi

		if [ $uplink7 = y ]; then
			10gigUplinkSwitch7
		fi

		if [ $uplink8 = y ]; then
			10gigUplinkSwitch8
		fi
	fi
fi

# ------------------------- Output Git Instuctions -------------------------

if [ $git = y ]; then
	echo ""
	echo "--------------------------------------------------"
	echo ""
	echo "Enter the following commands in the command prompt to create a branch "
	echo "for this site on the Gitlab repository (you have to do this manually):"
	echo "   git checkout -b" $hostname " 		#This will create a branch of the master repository for this site"
	echo "   git push origin" $hostname " 		#This pushes the new branch to the server"
	echo "   git add " $hostname".txt" " 			#This adds the new config file to the branch"
	echo "   git commit -m " " 			#This will add commit the new file to the repository."
	echo "                     			#After the -m you must put a double set of quotes."
	echo "                     			#You should put a description in between these quotes"
	echo "   git push -u origin" $hostname "		#this pushes the file to the server"
	echo ""
	echo "--------------------------------------------------"
	echo ""
	fi

exit
