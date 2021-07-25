
#!/usr/bin/env bash

freespace=$(df -h / | awk 'NR==2 {print $4}') 
freemem=$(free -h | awk 'NR==2 {print $4}')
 

echo "Quick system report for ${OSTYPE}"
echo $HOSTNAME
echo $BASH_VERSION
echo $freespace
echo $freemem
echo $(uname -r)
