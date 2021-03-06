#!/usr/bin/env perl
use 5.10.0;
use utf8;
use strict;
use warnings;
use open qw( :utf8 :std );
use Data::Dumper;

chomp( my $m = <> );
my @edges = map { chomp; [ split m{\s} ] }
            map { scalar <> }
            1 .. $m;
my @p = do { chomp( my $l = <> ); split m{\s}, $l };

my %links;

for my $edge_ref ( @edges ) {
    my( $from, $to ) = @{ $edge_ref };
    $links{ $from }{ $to }++;
    $links{ $to }{ $from }++;
}



exit;


