#!/usr/bin/perl
# 日本語文字化け防止用：あいうえおかきくけこ：京都の雀

use strict; use warnings;

system("/usr/bin/yum install -y httpd httpd-tools httpd-devel");
system("/usr/bin/yum update  -y httpd httpd-tools httpd-devel");

system("/usr/bin/systemctl enable httpd.service");

system("/usr/sbin/httpd -v");
