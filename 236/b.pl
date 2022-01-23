#!/usr/bin/env perl
use 5.10.0;
use utf8;
use strict;
use warnings;
use open qw( :utf8 :std );
use Data::Dumper;

chomp( my $n = <> );
my @a = do { chomp( my $l = <> ); split m{\s}, $l };

my %count;
for my $a ( @a ) {
    $count{ $a }++;
}

my( $missing ) = grep { $count{ $_ } == 3 } keys %count;

say $missing;

exit;
