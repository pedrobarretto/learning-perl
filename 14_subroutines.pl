use strict;
use warnings;

use Scalar::Util qw(looks_like_number);

sub makeUpperCase {
    my ($string) = @_;

    print uc $string, "\n";
}

sub makeUpperCaseWithShift {
    my $string = shift @_;

    print uc $string, "\n";
}

sub printHashValues {
    my (%hash) = @_;

    for my $key ( keys %hash ) {
        print $hash{$key}, "\n";
    }
}

# makeUpperCase("hello, word!");
# makeUpperCaseWithShift("hello, word! 2");

my %myhash = (
    a => "Pedro",
    b => "Barretto"
);

# printHashValues(%myhash);

sub sumArraysElements {
    my (@array) = @_;
    my $counter = 0;

    for my $value (@array) {
        $counter = $counter + $value if looks_like_number($value);
    }

    print $counter, "\n";

    return $counter;
}

my @array = ( 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "asdasd" );
sumArraysElements(@array);
