#!/bin/bash
if [ "$#" -eq 0 ]; then
echo -n "Введите номер в формате 4951234567:"
read num; 
else
num=$1;
fi
curl -s http://opendata.digital.gov.ru/api/v1/abcdef/phone?num=$num | awk -F "," '{print $6}' | awk -F ":" '{print $2}' | sed  's/[\]//g' | sed -e "s/^.//;s/.$//" 
