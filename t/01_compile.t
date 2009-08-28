#!perl

# Tests that the ##MAIN_MODULE## package compiles

use strict;
use warnings;
use Test::More tests => ##COUNT_PLUS_1##;

die 'this needs to be customized';

ok($] >= ##MINPERLVERSION##, "Your perl is new enough");

use_ok('');
