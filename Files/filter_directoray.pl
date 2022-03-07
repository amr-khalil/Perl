use strict;
use warnings;
use feature 'say';
 
my $dir = ".";
my $format = 'txt';

filter_dir($dir);

sub filter_dir{
	# Parameters
	#$_[0]: Directory path
	#$_[1]: File format

	# DH : Directory Handle
	opendir my $DH, $_[0] or die "Could not open '$_[0]' for reading '$!'\n";
	my @items = readdir $DH;

	foreach my $item (@items){
		if ($item eq "." or $item eq ".."){
			next;
		}
		say $item;
	}
	closedir $DH;
}
