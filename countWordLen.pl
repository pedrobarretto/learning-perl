use strict;
use warnings;

my ($word) = @ARGV;

print $word ? "Tamanho da palavra: " . length($word) . "\n" : "None\n";
