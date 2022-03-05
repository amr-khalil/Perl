my $filename = 'file.txt';

open(my $fh, '<', $filename) or die "Cannot open file: $!";
print while <$fh>;
close $fh;
