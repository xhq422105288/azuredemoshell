#!/bin/sh

### BEGIN INIT INFO
# Provides:      nginx
### END INIT INFO


os_release=$(cat /etc/os-release | grep ^ID_LIKE | awk -F '=' '{print $2}')


case $os_release in
 debian)
        apt install nginx -y && systemctl enable nginx
        ;;
esac

