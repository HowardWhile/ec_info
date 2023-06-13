#!/bin/bash

mkdir -p ec_info
cd ec_info

echo "-----------" > ec_slave_info.txt
echo "version: " >> ec_slave_info.txt
ethercat version >> ec_slave_info.txt
echo -e "-----------\r\n\n\n" >> ec_slave_info.txt

echo "-----------" >> ec_slave_info.txt
ethercat slave >> ec_slave_info.txt
echo -e "-----------\r\n\n\n" >> ec_slave_info.txt

echo "-----------" >> ec_slave_info.txt
ethercat slave -v >> ec_slave_info.txt

echo "-----------" > ec_sdos.txt
echo "quiet: " >> ec_sdos.txt
ethercat sdos -q >> ec_sdos.txt
echo -e "----------\r\n\n\n" >> ec_sdos.txt
echo "SDO entries: " >> ec_sdos.txt
ethercat sdos >> ec_sdos.txt
echo "-----------" >> ec_sdos.txt

echo "-----------" > ec_pdos.txt
ethercat pdos >> ec_pdos.txt
echo -e "----------\r\n\n\n" >> ec_pdos.txt
ethercat cstruct >> ec_pdos.txt
echo "----------" >> ec_pdos.txt

ethercat graph | dot -Tpng > ec_graph.png
ethercat xml > ec_slave_info.xml
