use strict;
use warnings;

use Data::Dumper;

my %hash = (
  firstName => "Pedro",
  lastName => "Barretto",
  ocupation => "Developer"
);

my $name = $hash{"firstName"}.
            " ".
            $hash{"lastName"}.
            " work as a ".
            $hash{"ocupation"}."!";

print $name, "\n";

$hash{"foo"} = "strozinho";

print $hash{"foo"}, "\n";

$hash{"ocupation"} = "Backend developer";

delete $hash{"foo"};

print Dumper(\%hash);

my %qwHash = qw(
  burger 500
  chips 200
  soda 400
);

print Dumper(\%qwHash);
