use feature 'say';
my $filename = 'linesfile.txt';

open(my $fh, '<', $filename) or die "Cannot open file: $!";

while (my $line = <$fh>){#
	chomp $line;
	say $line;
};
close $fh;
