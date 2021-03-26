#!/usr/bin/perl
# 日本語文字化け防止用：あいうえおかきくけこ：京都の雀

use strict; use warnings;

system("/usr/bin/yum remove -y mariadb-libs");
system("/usr/bin/yum install -y https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm");
system("/usr/bin/yum update  -y https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm");
system("/usr/bin/yum-config-manager --enable mysql80-community");
system("/usr/bin/yum-config-manager --disable mysql57-community");
system("/usr/bin/yum install -y mysql-community-client");
system("/usr/bin/yum update  -y mysql-community-client");
system("/usr/bin/yum install -y mysql-community-server");
system("/usr/bin/yum update  -y mysql-community-server");

printf("TODO /usr/bin/systemctl enable mysqld.service");
