#!/bin/bash
# file: clusterips.sh
# usage clusterips.sh ent-HASH-production-stuff@ssh.REGION.magento.cloud

for i in {1..3}
do
   echo -en "\e[91m$i\e[32m.$1\n\e[97m---\n"
   ssh $i.$1 'curl -s https://ipconfig.io'
   echo -en "\n"
done
