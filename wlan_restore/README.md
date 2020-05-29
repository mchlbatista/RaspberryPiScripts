# Restore WIFI connection in Raspberry Pi OS

## 1. Update IP on checkwifi.sh using  your router IP

``ping -c1 192.168.1.254 > /dev/null`` where ``192.168.1.254`` should be updated with your router IP.

## 2. Copy this script to /usr/local/bin/ and add execution rights to it

To copy
``sudo cp ./checkwifi.sh /usr/local/bin/checkwifi.sh``

To add execution rights
``sudo chmod +x /usr/local/bin/checkwifi.sh``

## 3. Add new "cron" configuration

Open Crontab
``sudo crontab -e``

Add the line that will execute the script.
``*/2 * * * * sudo -H /usr/local/bin/checkwifi.sh > /home/pi/cron_restore_wlan0.log 2>&1``

This will execute the script each 2 minutes.