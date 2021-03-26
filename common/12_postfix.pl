#!/usr/bin/perl
# 日本語文字化け防止用：あいうえおかきくけこ：京都の雀

use strict; use warnings;

system("/usr/bin/yum install -y postfix");
system("/usr/bin/yum update  -y postfix");

system("echo 'TODO /usr/bin/systemctl enable httpd.service'");

