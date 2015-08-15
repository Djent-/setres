#!/usr/perl
use warnings;
use strict;

if (@ARGV[0] eq "-f"){
system("xrandr", "--newmode", "1600x900_60.00", "118.25", "1600", "1696", "1856", "2112", "900", "903", "908",  "934", "-hsync", "+vsync");

system("xrandr", "--addmode", "VGA-0", "1600x900_60.00");

system("xrandr", "--output", "VGA-0", "--mode", "1600x900_60.00");

exit(0);
} else {
system("xrandr", "--newmode", "1600x804_60.00", "104.75", "1600", "1696","1848", "2096", "804", "807", "817",  "835", "-hsync", "+vsync");

system("xrandr", "--addmode", "VGA-0", "1600x804_60.00");

system("xrandr", "--output", "VGA-0", "--mode", "1600x804_60.00");

exit(0);
}
