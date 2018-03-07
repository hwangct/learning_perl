#!/usr/bin/perl
use strict;
use warnings;

## Numeric values operators
# == true if the value of the left operand is equal to the value of right operand, else false
# `!= true if the value of the left operand is not equal to the value of right operand, else false
# ! negates the boolean value of whatever comes after this in a conditional expression
# <=> Compares the values of two numeric values and returns -1, 0, or 1 if the left argument is numerically less than, equal to, or greater than the right argument, respectively
# > true if the value of the left operand is smaller than the value of right operand, else false
# < true if the value of the left operand is lower than the value of right operand, else false
# >= true if the value of the left operand is smaller or equal than the value of right operand, else false
# <= true if the value of the left operand is lower or equal than the value of right operand, else false

## String values operators
# eq true if the left argument is stringwise equal to the right argument
# ne true if the left argument is stringwise not equal to the right argument
# gt true if the left argument is stringwise greater than the right argument
# lt true if the left argument is stringwise less than the right argument
# ge true if the left argument is stringwise greater than or equal to the right argument
# le true if the left argument is stringwise less than or equal to the right argument
# cmp -1, 0, or 1 depending on whether the left argument is stringwise less than, equal to, or greater than the right argument, respectively

my $x = 5;
my $y = 10;
# if
if ($x == 5) {
    print "x is indeed 5\n";
} 
# if ... else
if ($y == 5) {
   print "y is indeed 5\n"
} else {
   print "y is not 5\n";
}
# if ... else using the ? : operator
my $my_result = ($y == 5) ? "y is indeed 5" : "y is not 5";
print "My result is: $my_result\n";

# if ... elsif ... else with multiple statements
if ($x > $y) {
  print "Result is: x ($x) is greater than y ($y)\n";
} elsif ($my_result eq "y is not 5") {
  print "Result is: I know that $my_result\n";
} else {
  print "Result is: x ($x) is not greater than y ($y)\n";
}

my @family = ('Homer', 'Moe', 'Maggie');
my %shoe_color = ('Lisa' => 'red', 'Homer' => 'brown', 'Maggie' => 'pink', 'Marge' => 'blue', 'Bart' => 'yellow');
my %shoe_size = ('Moe' => 9, 'Lisa' => 7, 'Homer' => 12, 'Bart' => 8, 'Maggie' => 4);

# start your code here
$default_shoe_color = "black";
$default_shoe_size = 4;

$member = $family[0];
if (!exists $shoe_color{$member}) {
	$shoe_color{$member} = $default_shoe_color;
}
if (!exists $shoe_size{$member}) {
	$shoe_size{$member} = $default_shoe_size;
}
$is_large = ($shoe_size{$member} >= 10) ? " large " : " ";
print "$member wears$is_large$shoe_color{$member} shoes size $shoe_size{$member}\n";

$member = $family[1];
if (!exists $shoe_color{$member}) {
	$shoe_color{$member} = $default_shoe_color;
}
if (!exists $shoe_size{$member}) {
	$shoe_size{$member} = $default_shoe_size;
}
$is_large = ($shoe_size{$member} >= 10) ? " large " : " ";
print "$member wears$is_large$shoe_color{$member} shoes size $shoe_size{$member}\n";

$member = $family[2];
if (!exists $shoe_color{$member}) {
	$shoe_color{$member} = $default_shoe_color;
}
if (!exists $shoe_size{$member}) {
	$shoe_size{$member} = $default_shoe_size;
}
$is_large = ($shoe_size{$member} >= 10) ? " large " : " ";
print "$member wears$is_large$shoe_color{$member} shoes size $shoe_size{$member}\n";

