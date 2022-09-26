#!/bin/bash
echo "By https://twitter.com/V24016770"
green=`tput setaf 2`
yellow=`tput setaf 3`
red=`tput setaf 1`
mkdir $1
cd $1
echo "${yellow}======> Started Sqli recon on $1"
gau $1 |uro > passive-endpoints
echo "${green}======> passive-endpoints.txt saved"
echo "${yellow}======> Endpoints parameters"
cat passive-endpoints|grep ‘?’ >parameter-endpoint
echo "${green}======> parameter-endpoint.txt saved"
echo "${yellow}======> Qsreplace"
cat parameter-endpoint|qsreplace \’ >sqli-test-endpoints
echo "${green}======> sqli-test-endpoints.txt saved"
echo "${red}======> Potential entry points"
httpx -l sqli-test-endpoints -ms “Query failed:”
echo "${yellow}======> sqli-test-endpoints.txt saved"
echo "Happy hacking by ${yellow}https://twitter.com/V24016770"
echo "${red}======> Recon finished"
