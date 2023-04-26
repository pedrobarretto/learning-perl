use warnings;
use strict;

my $thing = "";

if (1) {
    $thing = "Pedro";
}
else {
    $thing = "André";
}

print $thing, "\n";

my $thing2 = 1 ? "Pedro2" : "André2";
print $thing2, "\n";

my $thing3 = 0 ? "If" : 1 ? "Elsif" : "Else";
print $thing3, "\n";
