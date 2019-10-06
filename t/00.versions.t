#/usr/bin/env perl

use strict;
use warnings;

# I tried 'require'-ing modules but that did not work.

use Log::Handler::Plugin::DBI; # For the version #.

use Test::More;

use ;
use ;
use ;
use ;
use ;
use ;
use ;
use ;
use ;
use ;
use ;
use ;

# ----------------------

pass('All external modules loaded');

my(@modules) = qw
/
	
	
	
	
	
	
	
	
	
	
	
	
/;

diag "Testing Log::Handler::Plugin::DBI V $Log::Handler::Plugin::DBI::VERSION";

for my $module (@modules)
{
	no strict 'refs';

	my($ver) = ${$module . '::VERSION'} || 'N/A';

	diag "Using $module V $ver";
}

done_testing;
