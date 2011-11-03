use warnings;
use strict;
sub an;

my @persoane;
open (FILE, "situatie-1.txt") or die $!;
an();
sub an{
while(<FILE>)
{
  chomp;
  my @line = split "<li> -- " & "<li> <li> ", $_;
  push @persoane, \@line;
}

foreach my $student(@persoane) {
  foreach my $line(@{my $record}) {

    if(\$line == \$$student[-1]) {
      print "$line";
    }
    else {
      print "$line:";
    }
  }
  print "\n";
}
}



