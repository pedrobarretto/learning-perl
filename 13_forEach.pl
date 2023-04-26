use strict;
use warnings;

my @array = ( 1, 2, 3, 4, 5 );

foreach my $name (@array) {
    print $name, "\n";
}

for my $name (@array) {
    print $name, "\n";
}

foreach (@array) {
    print $_, "\n";
}
