# use a scalar variable for the name of the file
my $filename = "linesfile.txt";

open(FH, $filename); # open the file
my @lines = <FH>;    # read the file
close(FH);			 # close the file

my $count = scalar @lines; # the number of lines in a file
print "There are $count line in $filename\n";
