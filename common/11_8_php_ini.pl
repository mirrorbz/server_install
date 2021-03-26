#!/usr/bin/perl
# 日本語文字化け防止用：あいうえおかきくけこ：京都の雀

use strict; use warnings;
use File::Find;

my $g_php_ini_file;
rewrite_php_ini();

sub search {
    $g_php_ini_file = $File::Find::name if ($_ eq 'php.ini');
}
sub rewrite_php_ini {
    find(\&search, "/etc/");
    exit if (-e "${g_php_ini_file}.org");
    print $g_php_ini_file . "\n";
    my $cp_cmd = sprintf("/bin/cp -p %s %s.org", $g_php_ini_file, $g_php_ini_file);
    system($cp_cmd);

    my $php_ini_contents = '';
    open(ORG, "${g_php_ini_file}.org") || die();
    while(<ORG>) {
       s/[\r\n]+$//;
       if (/^;date.timezone =/) {
           $php_ini_contents .= "date.timezone = \"Asia/Tokyo\"\n";
           next;
       }
       if (/^expose_php =/ ) {
           $php_ini_contents .= "expose_php = Off\n";
           next;
       }

       # 公開サーバでは、Off にすること。
       if (/^display_errors =/) {
           $php_ini_contents .= "display_errors = On\n";
           next;
       }
       $php_ini_contents .= $_ . "\n";
    }
    close(ORG);

    open(OUTPUT, "> $g_php_ini_file");
    print OUTPUT $php_ini_contents;
    close(OUTPUT);
}
