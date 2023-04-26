use strict;
use warnings;

# undef, 0, 0000, '0', '' -> False
# Everything else -> True

my $statement = '0';

if ($statement) {
  print "True\n";
} else {
  print "False\n";
}