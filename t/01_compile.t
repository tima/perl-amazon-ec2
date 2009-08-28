#!perl

# Tests that the Amazon::EC2 package compiles

use strict;
use warnings;
use Test::More tests => 11;


ok($] >= 5.006, "Your perl is new enough");

use_ok('Amazon::EC2');
use_ok('Amazon::EC2::Attachment');
use_ok('Amazon::EC2::ConsoleOutput');
use_ok('Amazon::EC2::Error');
use_ok('Amazon::EC2::Image');
use_ok('Amazon::EC2::Instance');
use_ok('Amazon::EC2::Reservation');
use_ok('Amazon::EC2::Response');
use_ok('Amazon::EC2::Snapshot');
use_ok('Amazon::EC2::Volume');
