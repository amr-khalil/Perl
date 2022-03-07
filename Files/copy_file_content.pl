use feature 'say';

my $filein = 'file.txt';
my $fileout = 'fileout.txt';


open(my $fh1, '<', $filein) or die "Cannot open file: $!";
open(my $fh2, '>', $fileout) or die "Cannot open file: $!";


while (my $line = <$fh1>){
	print $fh2 $line;
};

close $fh1;
close $fh2;

say "Done";
