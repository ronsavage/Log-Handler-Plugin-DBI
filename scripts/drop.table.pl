#!/usr/bin/env perl

use strict;
use warnings;

use Config::Plugin::Tiny; # For config_tiny().

use File::Spec;

use Log::Handler::Plugin::DBI::CreateTable;

# -----------------------------------------

my($config) = config_tiny(undef, File::Spec -> catfile('t', '/config.logger.conf') );

Log::Handler::Plugin::DBI::CreateTable -> new(config => $$config{logger}) -> drop_log_table;
