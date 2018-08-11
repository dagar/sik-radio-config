#! /bin/bash

DEVICE=/dev/ttyUSB0

./uploader.py --resetparams --port ${DEVICE} firmware/radio\~hm_trp.ihx

./atcommander.py --force --set-local SERIAL_SPEED 57 ${DEVICE}
./atcommander.py --force --set-local AIR_SPEED 64 ${DEVICE}
./atcommander.py --force --set-local NETID 42 ${DEVICE}
#./atcommander.py --force --set-local TXPOWER 20 ${DEVICE}
#./atcommander.py --force --set-local ECC 1 ${DEVICE}
./atcommander.py --force --set-local MAVLINK 1 ${DEVICE}
#./atcommander.py --force --set-local OP_RESEND 0 ${DEVICE}
#./atcommander.py --force --set-local MAX_WINDOW 33 ${DEVICE}

sleep 1

./atcommander.py --force --list-local ${DEVICE}
