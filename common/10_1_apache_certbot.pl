#!/usr/bin/perl
# 日本語文字化け防止用：あいうえおかきくけこ：京都の雀

use strict; use warnings;

system("/usr/bin/yum install -y install epel-release");
system("/usr/bin/yum update  -y install epel-release");
system("/usr/bin/yum install -y install certbot python-certbot-apache");
system("/usr/bin/yum update  -y install certbot python-certbot-apache");
