#!/bin/bash
# file: clusterips.sh
# usage clusterips.sh ent-HASH-production-stuff@ssh.REGION.magento.cloudi
# ie: everything after the 1,2,3. in the connect to the ssh in the cloud UI
# Note: this assumes a 3 node cluster

for i in {1..3}
do
   echo -en "\e[91m$i\e[32m.$1\n\e[97m---\n"
   ssh $i.$1 'curl -s https://ipconfig.io'
   echo -en "\033[0m\n"
done
