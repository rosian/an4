use strict;
use warnings;
use Data::Dumper;

open(my $file, "<", "situatie-1.txt") or die("Could not open file: $!");
my $tablou = [];

while( my $line = <$file> ) {
	chomp($line);
	next if (substr($line, 0, 4) ne "<li>");
	my @elements = split(" ", join(" ", split("<li>|</li>|-", $line)));
	my $first_names = uc $elements[0];
        my @second_names = map { "\u$_" } @elements[1..$#elements-1];
        my $notes = $elements[-1];
	#print "\U$elements[0]\E @first_names $elements[-1]\n";


 push (@{$tablou},  {
    'nume' => $first_names,
    'prenume' => [@second_names],
    'nota' => $notes,            
  });

}

print Dumper($tablou);
