#!/bin/bash

# Turn on and turn off light of laptop IBM
c=1
while [ $c -le 10 ]
do
	echo on > /proc/acpi/ibm/light
	sleep 3
	echo off > /proc/acpi/ibm/light
	sleep 3
	((c++))
done
