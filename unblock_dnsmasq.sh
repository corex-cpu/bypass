#!/bin/sh
cat /dev/null > /opt/etc/unblock.dnsmasq
while read -r line || [ -n "$line" ]; do

  [ -z "$line" ] && continue
  #[ "${line:0:1}" = "#" ] && continue
  [ "${line#?}" = "#" ] && continue

  echo "$line" | grep -Eq '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' && continue

  echo "ipset=/$line/unblocktor" >> /opt/etc/unblock.dnsmasq
  echo "server=/$line/127.0.0.1#40500" >> /opt/etc/unblock.dnsmasq
done < /opt/etc/unblock/tor.txt

while read -r line || [ -n "$line" ]; do

  [ -z "$line" ] && continue
  #[ "${line:0:1}" = "#" ] && continue
  [ "${line#?}" = "#" ] && continue

  echo "$line" | grep -Eq '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' && continue

  echo "ipset=/$line/unblocksh" >> /opt/etc/unblock.dnsmasq
  echo "server=/$line/127.0.0.1#40500" >> /opt/etc/unblock.dnsmasq
done < /opt/etc/unblock/shadowsocks.txt
while read -r line || [ -n "$line" ]; do

  [ -z "$line" ] && continue
  #[ "${line:0:1}" = "#" ] && continue
  [ "${line#?}" = "#" ] && continue

  echo "$line" | grep -Eq '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' && continue

  echo "ipset=/$line/unblockvmess" >> /opt/etc/unblock.dnsmasq
  echo "server=/$line/127.0.0.1#40500" >> /opt/etc/unblock.dnsmasq
done < /opt/etc/unblock/vmess.txt
while read -r line || [ -n "$line" ]; do

  [ -z "$line" ] && continue
  #[ "${line:0:1}" = "#" ] && continue
  [ "${line#?}" = "#" ] && continue

  echo "$line" | grep -Eq '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' && continue

  echo "ipset=/$line/unblocktroj" >> /opt/etc/unblock.dnsmasq
  echo "server=/$line/127.0.0.1#40500" >> /opt/etc/unblock.dnsmasq
done < /opt/etc/unblock/trojan.txt


#script0
#script1
#script2
#script3
#script4
#script5
#script6
#script7
#script8
#script9
