use warnings;
use strict;

use File::Copy;

my $file_from = "file.txt";
my $file_to = "../new_file.txt";

copy_files($file_from, $file_to);

sub copy_files{
	# Parameters
	#$_[0]: file path source
	#$_[1]: file path distenation

	$file_from = $_[0];
	$file_to = $_[1];
	
	copy($file_from, $file_to) or die("Error: Copy failed! Check the file path");
	print("Success: copy is finished\n")
}
