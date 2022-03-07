use strict;
use warnings;
use feature 'say';
 
my $dir = ".";
my $format = 'csv';

filter_dir($dir, $format);

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

		if ($item =~ /$_[1]$/){
			say $item;
		}
	}
	closedir $DH;
}
