#!/usr/bin/env perl
use 5.10.0;
use utf8;
use strict;
use warnings;
use open qw( :utf8 :std );
use Data::Dumper;

my @s = map { chomp( my $l = <> ); $l }
        1 .. 3;
chomp( my $t = <> );

say map { $s[ $_ - 1 ] } split m{}, $t;

exit;
