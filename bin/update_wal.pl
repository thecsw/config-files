#!/bin/env perl

use strict;
use warnings;

my $file_name= $ARGV[0];
if (not defined $file_name) {
    die "Need some file\n";
}
$file_name =~ s/\//\\\//g;
$file_name =~ s/ /\\ /g;

print 'Copying the file to ~/.config/wallpapers/...';
system("cp $file_name ~/.config/wallpapers/");
print " \033[1;32mDONE.\033[0m\n";
$file_name =~ /.*\/?(.+)$/;
my $wall_file = "~/.config/wallpapers/$file_name";
$wall_file =~ s/\//\\\//g;

# Setting the wal
print 'Setting up the wal colorscheme...';
system("wal -q -i $file_name");
print " \033[1;32mDONE.\033[0m\n";

# Updating the i3 config to autoload wall image
print 'Updating the i3 config to autoload wall image...';
system("sed 's|\-i .*|\-i $wall_file\"|g' -i ~/.config/i3/config");
print " \033[1;32mDONE.\033[0m\n";

# Configuring zathura theme dark color
print 'Setting up the zathura dark colors...';
my $dark_color = `cat /home/thecsw/.cache/wal/colors | sort | uniq | tail -n 2 | sed 1q | tr -d '\n' `;
my $cmd_dark = "sed 's/darkcolor \".*\"/darkcolor \"$dark_color\"/g' -i ~/.config/zathura/zathurarc";
system($cmd_dark);
print " \033[1;32mDONE.\033[0m\n";

# Configuring zathura theme light color
print 'Setting up the zathura light colors...';
my $light_color = `cat /home/thecsw/.cache/wal/colors | sort | uniq | sed 1q | tr -d '\n' `;
my $cmd_light = "sed 's/lightcolor \".*\"/lightcolor \"$light_color\"/g' -i ~/.config/zathura/zathurarc";
system($cmd_light);
print " \033[1;32mDONE.\033[0m\n";

# Copying updated config file to the config files repo
print 'Updating the i3config with the config repo...';
my $cmd_copy = "cp ~/.config/i3/config ~/gits/config-files/.config/i3/config";
system($cmd_copy);
print " \033[1;32mDONE.\033[0m\n";
