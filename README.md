# Perl

# Installing Packages in Perl


To install a module with CPAN, the syntax is

```
> perl -MCPAN -e'install Module::Name'
```

For Example
```
> perl -MCPAN -e'install Text::CSV'
```

Otherwise CPAN will search for a module called Text::CSV_pm, which (obviously) doesn't exist.

MCPAN has als interactive module, which is a little more friendly:
```
perl -MCPAN -e shell
```

It's best to run it as root (i.e. sudo perl -MCPAN -e shell)
