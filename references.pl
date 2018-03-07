#!/usr/bin/perl
use strict;
use warnings;

## Creating references
# The simple method to create a reference is to assign it with the data type preceeded with the backslash (\) character. 
# It is useful to name the reference scalar such that one remembers what is the datatype it references to.
$price = 500;
$price_scalarref = \$price;
@names = ('hello', 'world');
$names_arrayref = \@names;
%bank_accounts = ('John Boy' => 1345.56, 'Mary Sue', => 12,023.11);
$bank_hashref = \%bank_accounts;


## De-referencing
# De-referencing returns the original data type and value to which the reference points to. To de-reference a reference 
# simply preceed the reference name with $, @ or % depending on whether the reference is pointing to a scalar, array, 
# or hash respectively. This is why it is a good practice to name the reference with some indication of the original data type.
$price = 500;
$price_scalarref = \$price;
print "Price is $$price_scalarref\n";

@names = ('hello', 'world');
$names_arrayref = \@names;
print "The names list is @$names_arrayref\n";

%bank_accounts = ('John Boy' => 1345.56, 'Mary Sue', => 12,023.11);
$bank_hashref = \%bank_accounts;

# create a new hash from the reference value
%my_new_bank_account = %$bank_hashref;
print "The balance for John Boy is $my_new_bank_account{'John Boy'}\n";


# Type of a variable
$integer = 10;
$ref = \$integer;
print "Reference type in ref: ", ref($ref), "\n";

@array = (1, 2, 3);
$ref = \@array;
print "Reference type in ref: ", ref($ref), "\n";

%hash = ('key1' => 10, 'key2' => 20);
$ref = \%hash;
print "Reference type in ref: ", ref($ref), "\n";

# It is also possible to create a reference to a function by prefixing the reference with \&
sub print_hash {
    my (%hash) = @_;

    foreach $key (keys %hash) {
        print "$key : $hash{$key}\n";
    }
}
%hash = ('Name' => 'Kevin', 'series' => 'The Office');

# Create a reference to above function.
$cref = \&print_hash;

# Function call using reference.
&$cref(%hash);