#!/usr/bin/perl
use strict;
use warnings;

# While Condition Loops: repeat a BLOCK while the CONDITION is true. The CONDITION is evaluated before executing the BLOCK.
my $count = 10;
while ($count > 0) {
  print "Countdown is: $count\n";
  $count--;
}

# # Until Condition Loops: repeat a BLOCK until the CONDITION is false. The CONDITION is evaluated before executing the BLOCK.
my $count = 1;
until ($count > 10) {
  print "Countup is: $count\n";
  $count++;
}

# # For Condition Loops: This is a loop structure similar to the C language for loop. Before the loop starts 
# # execute INIT as the initialization sequence. Then repeat the statement BLOCK while CONDITION is true. 
# # CONDITION is tested before executing BLOCK. After each iteration, execute the COMMAND.
for (my $count=0; $count <= 9; $count++) {
   print "$count\n";
}

# # Foreach Condition Loops: iterate over all ARRAY values, assigning VAR to the next value from ARRAY in each 
# # iteration, and run BLOCK for each value.
@colors = ('red', 'blue', 'yellow');
foreach $color (@colors) {
    print "Color: $color\n";
}


# # Do While Condition Loops: repeat a statement BLOCK while CONDITION is true. CONDITION is tested after executing BLOCK.
$count = 10;
do {
  print "Countdown is: $count\n";
  $count--;
} while ($count > 0)


# Loop Control Statements.  next = continue, last = break.
my @colors = ('red', 'blue', 'yellow', 'pink', 'black');
foreach $color (@colors) {
    if ($color eq 'blue') {
        next;
    }
    print "Color: $color\n";
    if ($color eq 'pink')  {
        last;
    }
}
print "Exited loop!";

@NUMBERS = (951,402,984,651,360,69,408,319,601,485,980,507,725,547,544,615,83,165,141,501,263,617,865,575,219,390,237,412,566,826,248,866,950,626,949,687,217,815,67,104,58,512,24,892,894,767,553,81,379,843,831,445,742,717,958,609,842,451,688,753,854,685,93,857,440,380,126,721,328,753,470,743,527);

foreach $number (@NUMBERS) {
	if ($number % 2 == 0) {
		print $number . "\n";
	}
    last if ($number == 237);
}