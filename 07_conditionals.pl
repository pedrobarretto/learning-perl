use strict;
use warnings;

if (0) {
  print "1. Evaluates as true\n";
} elsif (1) {
  print "2. Evaluates as true\n";
} else {
  print "3. Evaluates as false\n";
}

# Unless, pelo que entendi, é um if de negação, como se fosse um if com !
unless (0) {
  print "UNLESS Evaluates as false\n";
}

print "Pedro\n" if (1);
print "Unless Pedro\n" unless (0);
