#!/usr/bin/perl
use strict;
use warnings;

## Arithmetic Operators
# + Addition - Adds the operand values from either side of the operator
# - Subtraction - Subtracts the right operand from the left operand
# - Negation - When taking a single operand (unary), it calculates the negative value
# * Multiplication - Multiplies the operand values from either side of the operator
# / Division - Divides the left operand by the right operand
# % Modulus - Divides the left operand by the right operand and returns remainder
# ** Exponent - Calculates the left operand to the power of the right operand


## Assignment Operators:l
# = Simple assignment - assigns values from right side operands and operators to left side operand
# += Addition and assign - add right operand to left operand and assign to left operand
# -= Substract and assign - substract right operand from left operand and assign to left operand
# *= Multiply and assign - multiply right operand by left operand and assign to left operand
# /= Divide and assign - divide left operand by right operand and assign to left operand
# %= Modulus and assign - divide left operand by right operand and assign remainder to left operand
# **= Exponent and assign - calculates the left operand to the power of the right operand and assign to left operand
# ++ Autoincrement - increases unary operand value by one. E.g. $x++ or ++$x gives 11
# -- Autodecrement - decreases unary operand value by one. E.g. $x-- or --$x gives 9
# Note that $x++ is considered post-autoincrement, and ++$x is considered pre-autoincrement:

# $a = $x++ will assign $a with 10 and $x with 11 (autoincrement $x after assigning value to $a)
# $a = ++$x will assign $x with 11 then assign $a with 11 (autoincrement $x before assigning value to $a)
# Similarly with -- (autodecrement):

# $a = $x-- will assign $a with 10 and $x with 0 (autodecrement $x after assigning value to $a)
# $a = --$x will assign $x with 9 then assign $a with 9 (autodecrement $x before assigning value to $a)


## Bitwise Operators
# & AND - bitwise AND of the operand values from either side of the operator e.g. $b & $mask gives 0b1001
# | OR - bitwise OR of the operand values from either side of the operator e.g. $b | $mask gives 0b1111
# ^ XOR - bitwise XOR of the operand values from either side of the operator e.g. $b & $mask gives 0b1001
# ~ NOT - bitwise INVERT (unary operator) inverts each bit of the left operand e.g. ~$b give 0b10100110
# << SHIFT LEFT - bitwise SHIFT LEFT the left operand, right operand times e.g. $b << 1 give 0b101001100
# >> SHIFT RIGHT - bitwise SHIFT RIGHT the left operand, right operand times e.g. $b >> 1 give 0b01010011
my $b = 0b01011001;
my $mask = 0b1111;
my $bandm = $b & $mask;
my $borm = $b | $mask;
my $bxorm = $b ^ $mask;
print "$b & $mask = $bandm\n";
print "$b | $mask = $borm\n";
print "$b ^ $mask = $bxorm\n";
my $bshl = $b << 1;
my $bshr = $b >> 1;
print "$b << 1 = $bshl\n";
print "$b >> 1 = $bshr\n";


## Logical Operators
# and Logical AND operator - return TRUE if both the operands are true, otherwise FALSE
# && Logical AND operator - return TRUE if both the operands are true, otherwise FALSE
# or Logical OR operator - return TRUE if either one of the operands is true, otherwise FALSE
# || Logical OR operator - return TRUE if either one of the operands is true, otherwise FALSE
# xor Logical XOR operator - return TRUE if one of the operands is true and the other is false, otherwise FALSE
# not Logical NOT operator (unary operator)- return TRUE if the operand is false, otherwise FALSE
# ! Logical NOT operator (unary operator)- return TRUE if the operand is false, otherwise FALSE
 my $a = 50;
 # TRUE
 if ( (10 > 5) and ($a == 50) ) {print "TRUE\n"} else {print "FALSE\n"}
 # TRUE
 if ( (10 > 5) && ($a == 50) ) {print "TRUE\n"} else {print "FALSE\n"}
 # TRUE
 if ( (10 > 999) or ($a == 50) ) {print "TRUE\n"} else {print "FALSE\n"}
 # TRUE
 if ( (10 > 5) || ($a == 999) ) {print "TRUE\n"} else {print "FALSE\n"}
 # FALSE
 if ( (10 > 5) xor ($a == 50) ) {print "TRUE\n"} else {print "FALSE\n"}
 # TRUE
 if ( (10 > 999) xor ($a == 50) ) {print "TRUE\n"} else {print "FALSE\n"}
 # TRUE
 if ( !(10 > 999) ) {print "TRUE\n"} else {print "FALSE\n"}

## String Operators
# . String concatenation operator - concatenate the left and right operands e.g. $a . $b gives "world hello"
# x String repetition operator - return the left operand repeated the number of times specified by the right operator. E.g. $b x 3 gives "hellohellohello"
my $a = "world";
my $b = "hello";
print "Say to the " . $a . ": " . $b x 3 . "\n";

## Miscellaneous Operators
# .. The range operator - returns an array of values reflecting the sequential range beteen the two operands. For numeric operands, the values are incremented by 1 from the left operand to the right operand. For letters (lowercase or uppercase), the values are incremented in alphabetical order.
my @list_of_numbers = (3..10);
print "@list_of_numbers\n";      # 3 4 5 6 7 8 9 10

my @list_of_letters = ('c'..'g');
print "@list_of_letters\n";      # c d e f g

my @list_of_upper = ('R'..'V');
print "@list_of_upper\n";        # R S T U V

$a = 5;
print "$a\n";
$a+= 6;
print "$a\n";
$a*= 2;
print "$a\n";
$a++;
print "$a\n";
$a-=9;
print "$a\n";
$a/=7;
print "$a\n";