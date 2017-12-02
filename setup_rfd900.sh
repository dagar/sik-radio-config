#! /bin/bash

DEVICE=/dev/ttyUSB0

./uploader.py --resetparams --port ${DEVICE} firmware/RFDSiK\ V1.12\ rfd900p.ihx

./atcommander.py --force --set-local NETID 42 ${DEVICE}
./atcommander.py --force --set-local TXPOWER 22 ${DEVICE}
./atcommander.py --force --set-local ECC 1 ${DEVICE}
./atcommander.py --force --set-local MAVLINK 1 ${DEVICE}

sleep 1

./atcommander.py --force --list-local ${DEVICE}
