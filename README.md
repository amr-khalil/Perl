# Perl
Perl useful scripts

#Install Packages in Perl


If you are installing a module with CPAN, the syntax is

> perl -MCPAN -e'install Module::Name'
>No extension needed

For Example

perl -MCPAN -e'install Text::CSV'
Otherwise CPAN will search for a module called Text::CSV_pm, which (obviously) doesn't exist.

You can also use cpan in interactive module, which is a little more friendly:

perl -MCPAN -e shell
It's best to run it as root (i.e. sudo perl -MCPAN -e shell) if you're trying to update your system perl, or set up cpan so that it writes to directories that you own (e.g. your home directory).
