#!/usr/bin/perl
# 日本語文字化け防止用：あいうえおかきくけこ：京都の雀

use strict; use warnings;

system("/usr/bin/yum install -y php74 php74-php php74-php-mysql php74-php-bcmath php74-php-ctype php74-php-json php74-php-mbstring php74-php-openssl php74-php-tokenizer php74-php-xml php74-php-gd php74-php-pdo php74-php-pear");
system("/usr/bin/yum update  -y php74 php74-php php74-php-mysql php74-php-bcmath php74-php-ctype php74-php-json php74-php-mbstring php74-php-openssl php74-php-tokenizer php74-php-xml php74-php-gd php74-php-pdo php74-php-pear");

if (-e '/usr/bin/php' && -l '/usr/bin/php' ) {
    unlink('/usr/bin/php');
}
system("/bin/ln -sf /usr/bin/php74 /usr/bin/php");

