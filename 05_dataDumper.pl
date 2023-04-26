use strict;
use warnings;

use Data::Dumper;

my $scalar = "string";
my @array  = ( 1, 2, 3, "Pedro" );

my %hash = (
    name     => "Pedro Barretto",
    height   => 1.70,
    interest => [ "Coding", "Games", "Moovies" ]
);

print Dumper( \$scalar );
print Dumper( \@array );
print Dumper( \%hash );
