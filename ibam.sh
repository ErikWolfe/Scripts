#!/bin/bash

echo -e "\e[8;5;36t";
echo -e '\e[3;0;663t]';
cd /bin;
watch -n 10 ./ibam --percentbattery --profile;

