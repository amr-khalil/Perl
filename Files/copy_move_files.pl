use warnings;
use strict;

use File::Copy;

my $file_from = "file.txt";
my $file_to = "../new_file.txt";

copy($file_from, $file_to) or die("Error: Copy failed! Check the file path");
