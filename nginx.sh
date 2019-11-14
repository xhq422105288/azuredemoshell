#!/bin/sh

### BEGIN INIT INFO
# Provides:      nginx
### END INIT INFO


os_release=$(cat /etc/os-release)
if [ $os_release =~ "rhel" ];then
    wget https://nginx.org/packages/rhel/7/x86_64/RPMS/nginx-1.16.1-1.el7.ngx.x86_64.rpm -P /tmp && \
    yum install /tmp/nginx-1.16.1-1.el7.ngx.x86_64.rpm  -y && \
    systemctl enable nginx
fi

if [ $os_release =~ "ubuntu" ];then
    apt install nginx -y && \
    systemctl enable nginx
fi

if [ $os_release =~ "sles" ];then
    zypper install nginx -y && \
    systemctl enable nginx
fi

if [ $os_release =~ "debian" ];then
    apt install nginx -y && \
    systemctl enable nginx
fi
