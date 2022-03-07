use warnings;
use strict;

use File::Copy;

my $file = "file.txt";

delete_file($file);

sub delete_file{
	# Parameters
	#$_[0]: file path
	
	$file = $_[0];

	unlink($file) or die("Error: deletion failed!");
	print("Success: file is deleted\n")
}
