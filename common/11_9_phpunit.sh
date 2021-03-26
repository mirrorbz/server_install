#!/bin/bash
# 日本語文字化け防止用：あいうえおかきくけこ：京都の雀

# バージョン情報：https://phpunit.de/supported-versions.html
/usr/bin/wget https://phar.phpunit.de/phpunit-9.phar -O /usr/local/bin/phpunit
/usr/bin/chmod +x /usr/local/bin/phpunit
/usr/local/bin/phpunit --version
