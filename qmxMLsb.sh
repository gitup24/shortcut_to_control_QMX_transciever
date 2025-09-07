#!/bin/bash

# Rig model number for QMX+ is 2057 (Kenwood TS-480)
# -r is the serial port
# -s is the baud rate, although it's often ignored for virtual ports, it's good practice to include it.
RIG_MODEL="2057"
RIG_PORT="/dev/ttyACM0"
BAUD_RATE="57600" # Use a high baud rate


# 1. Get the current frequency
# The 'f' command returns the frequency in Hz.
#CURRENT_FREQ=$(rigctl -m $RIG_MODEL -r $RIG_PORT -s $BAUD_RATE f)


# 2. Add 1000 Hz (1 kHz) to the current frequency
#NEW_FREQ=$((CURRENT_FREQ - 1000))

# 3. Set the new frequency
rigctl -m $RIG_MODEL -r $RIG_PORT -s $BAUD_RATE M PKTLSB 3200

# 4. get current mode
MODE=$(rigctl -m $RIG_MODEL -r $RIG_PORT -s $BAUD_RATE m)

# Optional: Print the new frequency to the terminal for confirmation
echo "SSB mode changed to: $MODE"

#shortcut available in gnome Unbuntu 25: gnome-terminal -e "/bin/sh /home/olivier/Documents/hamlib/script/inc0001000hz.sh" et usermode et udev
