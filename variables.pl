#!/usr/bin/perl
use strict;
use warnings;

# Single and double quotes
my $x = 5;
print "double quotes allow the variable named x to show its real value of $x\n";
print 'but within single quotes the value of $x is not replaced\n';

# Scalar Variables
my $item_price = 5;          
my $item_name = "Apple";       
print "\nThe price of one $item_name is $item_price gold coins.\n";

# Array Variables
my @item_price_list = (5 , 8 , 24); # A array assignment
my @item_name_list = ("Apple", "Banana", "Mushroom"); # Another array assignment
print "The price of one $item_name_list[0] is $item_price_list[0] gold coins.\n";
print "The price of one $item_name_list[1] is $item_price_list[1] gold coins.\n";
print "The price of one $item_name_list[2] is $item_price_list[2] gold coins.\n";

# Hash Variables
my %item_catalog = ("Apple" => 5 , "Banana" => 8, "Mushroom" => 24);
# note the required backslash to escape the double-quotes around the key string Apple
print "The price of one Apple is $item_catalog{\"Apple\"} gold coins.\n";
my $item_name = "Banana";
print "The price of one $item_name is $item_catalog{$item_name} gold coins.\n";
my @item_name_list = ("Apple", "Banana", "Mushroom");
print "The price of one $item_name_list[2] is $item_catalog{$item_name_list[2]} gold coins.\n";

my %car_catalog = ("BMW Series 5" => 100000, "Mercedes 2000" => 250000, "Toyota Corolla" => 20000, "Lexus 3" => 95000);
my @my_wishlist = ("Lexus 3", "Mercedes 2000");
print "I would like to buy one $my_wishlist[0] for the price of $car_catalog{$my_wishlist[0]} Dollars.\n";
print "I would like to buy one $my_wishlist[1] for the price of $car_catalog{$my_wishlist[1]} Dollars.\n";