
#!/usr/bin/env bash

myip="192.168.207"

if [ "$1" == "" ]; then
	echo "You forgot an IP address!"
	echo "Syntax: $0 $myip"

else
	for ip in {1..254}; do
		ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
	done
	echo "List of all $# arguments:"
	for i in $@; do
		echo $i
	done
	
fi
