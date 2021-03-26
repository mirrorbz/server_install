#!/usr/bin/perl
# 日本語文字化け防止用：あいうえおかきくけこ：京都の雀

use strict; use warnings;

my $project = shift;
die unless (defined $project);

my $base_dir = shift || '/var/www';
die unless (-d $base_dir);
chdir($base_dir);
die if (-e $project);

system("/usr/bin/yes | composer create-project \"laravel/laravel=6.*\" $project");

chdir($project);
system("/usr/bin/php  artisan -V");
