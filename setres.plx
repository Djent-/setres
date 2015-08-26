#!/usr/perl
use warnings;
use strict;

if ($ARGV[0] && $ARGV[0]  eq "-f"){ #fullscreen
	## TODO: check whether the output mode is already present in xrandr
	system("xrandr", "--newmode", "1600x900_60.00", "118.25", "1600", "1696", "1856", "2112", "900", "903", "908",  "934", "-hsync", "+vsync");

	system("xrandr", "--addmode", "VGA-0", "1600x900_60.00");

	system("xrandr", "--output", "VGA-0", "--mode", "1600x900_60.00");

	exit(0);
}
if ($ARGV[0] && $ARGV[0] eq "-w"){ #windowed
	## TODO: check whether the output mode is already present in xrandr
	system("xrandr", "--newmode", "1600x804_60.00", "104.75", "1600", "1696","1848", "2096", "804", "807", "817",  "835", "-hsync", "+vsync");

	system("xrandr", "--addmode", "VGA-0", "1600x804_60.00");

	system("xrandr", "--output", "VGA-0", "--mode", "1600x804_60.00");

	exit(0);
}
if ($ARGV[0] && $ARGV[0] eq "-dockbg"){ #apply dock background
	unless ( -e "/home/watermelon/Pictures/ZhGEqAP.jpg" ) { #wallpaper not present in system, go download it
		unless ( -d "/home/watermelon/Pictures" ) { mkdir("/home/watermelon/Pictures"); }; #mkdir if needed
		system( "curl", "https://i.imgur.com/ZhGEqAP.jpg", ">", "/home/watermelon/Pictures/ZhGEqAP.jpg" );
	};
	system("feh", "--bg-scale", "/home/watermelon/Pictures/ZhGEqAP.jpg");
	exit(0);
}
if ($ARGV[0] && $ARGV[0] eq "-hidpi"){ #set dpi in .Xresources if needed, set screen res to 3200x1600, set URxvt font size
	# not implemented yet
	# user would need to manually exit bspwm and type startx to see changes
	exit(0);
}
exit(0);
