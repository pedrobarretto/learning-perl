use strict;
use warnings;

use Data::Dumper;

print Dumper( \@ARGV );

my $firstArg = $ARGV[0];    # Usando scalar context $
print $firstArg, "\n";

my ( $firstArg, $secondArg ) = @ARGV;    # Usando array context @
print $firstArg, "\n", $secondArg, "\n";
