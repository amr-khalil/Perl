use warnings;
use strict;

use File::Copy;

my $file_old_name = "file.txt";
my $file_new_name = "file_renamed.txt";


rename_file($file_old_name, $file_new_name);

sub rename_file{
	# Parameters
	#$_[0]: file old name 
	#$_[1]: file new name 

	rename($_[0], $_[1]) or die("Error: file cannot be renamed failed!");
	print("Success: file is renamed\n")
}
