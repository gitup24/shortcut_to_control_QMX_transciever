Ubuntu 25

Move all scripts to /home/USER/Documents/hamlib/script/

Grant access to all serial devices with USB:
sudo usermod -a -G dialout olivier
echo 'SUBSYSTEM=="tty", GROUP="dialout", MODE="0666"' | sudo tee /etc/udev/rules.d/99-hamradio.rules

Parameter>Customized shortcut
In the command field of the shortcut :
gnome-terminal -e "/bin/sh /home/USER/Documents/hamlib/script/qmxF0000100inc.sh"
