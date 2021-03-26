#!/bin/bash
# 日本語文字化け防止用：あいうえおかきくけこ：京都の雀の往来

cd /root/

/usr/bin/rpm -qa | sort > /root/rpm_list_`/bin/date "+%Y%m%d_%H%M%S"`

/usr/bin/yum -y update

/usr/bin/yes | /usr/bin/amazon-linux-extras install epel
/usr/bin/yum install -y epel-release
/usr/bin/yum update  -y epel-release
/usr/bin/rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

/usr/bin/yum install -y gcc libgcc make wget curl openssl openssl-libs git bind-utils rsync
/usr/bin/yum update  -y gcc libgcc make wget curl openssl openssl-libs git bind-utils rsync

/usr/bin/yum install -y vim vim-enhanced vim-filesystem vim-common
/usr/bin/yum update  -y vim vim-enhanced vim-filesystem vim-common

/usr/bin/yum install -y python3
/usr/bin/yum update -y python3
/usr/bin/yum install -y python3-pip
/usr/bin/yum update -y python3-pip
/usr/bin/pip3 install awscli --upgrade

/usr/bin/timedatectl set-timezone Asia/Tokyo

/usr/sbin/setenforce 0

