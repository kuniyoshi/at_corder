#!/usr/bin/env perl
use 5.10.0;
use utf8;
use strict;
use warnings;
use open qw( :utf8 :std );
use Data::Dumper;
use integer;

my( $n, $x ) = do { chomp( my $l = <> ); split m{\s}, $l };
my @s = do { chomp( my $l = <> ); split m{}, $l };

my @moves;
my $u = 0;

for my $s ( reverse @s ) {
    if ( $s eq q{U} ) {
        $u++;
        next;
    }

    if ( !$u ) {
        push @moves, $s;
        next;
    }

    $u--;
}

push @moves, ( q{U} ) x $u;

@moves = reverse @moves;

my $node = $x;

for my $s ( @s ) {
    if ( $s eq q{U} ) {
        $node = $node / 2;
    }
    elsif ( $s eq q{L} ) {
        $node = 2 * $node;
    }
    else {
        $node = 2 * $node + 1;
    }
}

say $node;

exit;
