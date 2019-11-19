#!/bin/bash
### BEGIN INIT INFO
# Provides:      jdk-8
### END INIT INFO

source /etc/os-release
case $ID in
debian|ubuntu|devuan)
    apt-get update
    apt install openjdk-8-jdk -y
    ;;
centos|fedora|rhel)
    yum install java-1.8.0-openjdk -y
    ;;
*)
    exit 1
    ;;
esac
