# Restore Wifi if it's down
# Update the IP on the script "192.168.1.254" using the IP of your router 
# Copy this script to /usr/local/bin/ and add execution rights to it
# sudo cp ./checkwifi.sh /usr/local/bin/checkwifi.sh
# sudo chmod +x /usr/local/bin/checkwifi.sh
# Add the next line to your crontab configuration
# sudo crontab -e
# */2 * * * * sudo -H /usr/local/bin/checkwifi.sh > /home/pi/cron_restore_wlan0.log 2>&1
ping -c1 192.168.1.254 > /dev/null
if [ $? != 0 ]; then
  ip link set wlan0 down
  sleep 5
  ip link set wlan0 up
fi