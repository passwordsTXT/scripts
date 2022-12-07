#! /bin/bash

apt update
apt install openssh-server -y
sed -i "s/#PermitRootLogin /PermitRootLogin /" /etc/ssh/sshd_config
sed -i "s/ prohibit-password/ yes/" /etc/ssh/sshd_config
systemctl restart ssh
hostname -I
