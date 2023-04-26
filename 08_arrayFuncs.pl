use warnings;
use strict;

use Data::Dumper;

# POP
print "POP: \n";
my @arrayPop = ( "Pedro", "André", "Emerson", "Jane" );
print Dumper( \@arrayPop );
my $arrayPopScalar = pop(@arrayPop);
print Dumper( \@arrayPop );
print Dumper( \$arrayPopScalar );

print "\n";

# PUSH
print "PUSH: \n";
my @arrayPush = ( "Barretto", "Galvão", "Eire", "Silva" );
print Dumper( \@arrayPush );
push( @arrayPush, "Oliveira" );
print Dumper( \@arrayPush );

print "\n";

# SHIFT
print "SHIFT: \n";
my @arrayShift = ( "Red", "Green", "Blue", "Black" );
print Dumper( \@arrayShift );
my $arrayShiftScalar = shift(@arrayShift);
print Dumper( \@arrayShift );
print Dumper( \$arrayShiftScalar );

print "\n";

# UNSHIFT
print "UNSHIFT: \n";
my @arrayUnshift = ( "Pizza", "Vegetables", "Popcorn" );
print Dumper( \@arrayUnshift );
unshift( @arrayUnshift, "Soda" );
print Dumper( \@arrayUnshift );
