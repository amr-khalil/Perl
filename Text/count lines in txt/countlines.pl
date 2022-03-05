use warnings;
use IO::File;

# use a scalar variable for the name of the file
my $filename = "linesfile.txt";

# Open the file - with error reporting
my $fh = IO::File->new($filename, 'r');
if (!$fh){
	print("cannot open $filename ($!)\n");
	exit;
}

# count the lines
my $count = 0; 
while($fh->getline){
	$count++
}

print "There are $count lines in $filename\n";
