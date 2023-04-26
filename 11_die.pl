use warnings;
use strict;

my ($word) = @ARGV;

die "Error: No word passed in a command line argument\n" if not defined $word;

print length($word), "\n";
