#!/bin/bash
# Autodetect username
USER=mendel
# Absolute path to this script.
SCRIPT=$(readlink -f $0)
# Absolute path this script is in.
SCRIPTPATH=$(dirname $SCRIPT)
GSCRIPTPATH=/project2/github/pipe/google-coral-examples-camera-pipe/gstreamer
PSCRIPTPATH=/home/mendel/webcam
python3 $SCRIPTPATH/app.py >/dev/null 2>&1 & 
sleep 2
chgrp i2c /sys/class/pwm/pwmchip1/pwm0/* && chmod -R g+w /sys/class/pwm/pwmchip1/pwm0/*
chgrp i2c /sys/class/pwm/pwmchip0/pwm0/* && chmod -R g+w /sys/class/pwm/pwmchip0/pwm0/*
#su -c "$GSCRIPTPATH/start.sh >/dev/null 2>&1 &" $USER 
sleep 1
su -c "$PSCRIPTPATH/start.sh >/dev/null 2>&1 &" $USER 
exit 0


