#!/bin/bash
# 日本語文字化け防止用：あいうえおかきくけこ：京都の雀

if [ -e '/usr/local/bin/composer' ]; then
  /usr/bin/yes | /usr/local/bin/composer -V
  exit;
fi

# https://getcomposer.org/download/
# https://getcomposer.org/doc/00-intro.md
/usr/bin/php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
/usr/bin/php -r "if (hash_file('sha384', 'composer-setup.php') === '756890a4488ce9024fc62c56153228907f1545c228516cbf63f885e036d37e9a59d27d63f46af1d4d07ee0f76181c7d3') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
/usr/bin/php composer-setup.php
/usr/bin/php -r "unlink('composer-setup.php');"
/bin/mv composer.phar /usr/local/bin/composer

/usr/bin/yes | /usr/local/bin/composer -V
