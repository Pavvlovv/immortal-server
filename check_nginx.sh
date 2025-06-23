#!/bin/bash

if pgrep -x "nginx" > /dev/null
then
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Nginx is running." >> /var/log/my_script.log
else
    systemctl start nginx
    echo "$(date '+%Y-%m-%d %H:%M:%S') - Nginx was down. Restarting." >> /var/log/my_script.log
fi
