#!/usr/bin/bash

fluid=$(aconnect -o -l | awk '/FLUID/{ print substr($2,1,length($2)-1);exit }')

./gaconmidi ${fluid}
