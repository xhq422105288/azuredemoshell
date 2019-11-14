#!/bin/sh

### BEGIN INIT INFO
# Provides:      nginx
### END INIT INFO


os_release=$(cat /etc/os-release | grep ^ID_LIKE | awk -F '=' '{print $2}')


case $os_release in
 debian)
        apt install nginx -y && systemctl enable nginx && systemctl start nginx
        ;;
 "rhel fedora")
        wget https://nginx.org/packages/rhel/7/x86_64/RPMS/nginx-1.16.1-1.el7.ngx.x86_64.rpm -P /tmp && \
        yum install /tmp/nginx-1.16.1-1.el7.ngx.x86_64.rpm -y && systemctl enable nginx && systemctl start nginx
        ;;
esac

