#!/bin/bash
### BEGIN INIT INFO
# Provides:      nginx
### END INIT INFO

source /etc/os-release
case $ID in
debian|ubuntu|devuan)
    apt install nginx -y && systemctl enable nginx && systemctl start nginx
    ;;
centos|fedora|rhel)
    wget https://nginx.org/packages/rhel/7/x86_64/RPMS/nginx-1.16.1-1.el7.ngx.x86_64.rpm -P /tmp && \
    yum install /tmp/nginx-1.16.1-1.el7.ngx.x86_64.rpm -y && systemctl enable nginx && systemctl start nginx
    ;;
*)
    exit 1
    ;;
esac









