 echo -e OS -  $( awk -F '"' '/PRETTY_NAME/ { print $2 }' /etc/os-release)
 echo -e "RAM -"  $(free --mega | awk 'NR == 2 { print $3" / "$2" MB" }')
 echo -e "CPU -  $(cat /proc/cpuinfo | grep model\ name | cut -f 2 -d ":" | sort -u)"
 echo -e Kernel -  $(uname -r)

