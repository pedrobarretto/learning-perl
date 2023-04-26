use strict;
use warnings;

my @lst = ( 1, 2, 3, 4, 5 );

my @listOfThings = ( "String", 123, 0.1, undef );

my $thing = "Another string";
my @array = ( "String", $thing );

# Accessing arrays
my $element = $array[1];

# DONT DO THIS
my $neat = "string";
my @neat = ( "string", "string2", $element );
$neat[2];

# qw arrays
my @quoteWordArray      = qw(each of theese words is an array element);
my @quoteWordArraySlash = qw/each of theese words is an array element too/;

# len of array
print scalar @quoteWordArray, "\n";
