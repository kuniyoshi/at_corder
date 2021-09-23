#!/usr/bin/env perl
use 5.10.0;
use utf8;
use strict;
use warnings;
use open qw( :utf8 :std );
use Data::Dumper;

chomp( my $n = <> );
chomp( my $xy = <> );
my @bentos = map { [ split m{\s} ] }
             map { chomp( my $l = <> ); $l }
             1 .. $n;

my( $x, $y ) = split m{\s}, $xy;
my @dp = ( );

my $INF = 301;

for my $i ( 0 .. $n ) {
    for my $j ( 0 .. $x ) {
        for my $k ( 0 .. $y ) {
            $dp[ $i ][ $j ][ $k ] = $INF;
        }
    }
}

$dp[0][0][0] = 0;

for my $i ( 1 .. $n ) {
    my $bento_ref = $bentos[ $i - 1 ];
    my( $cx, $cy ) = @{ $bento_ref };

    for my $j ( 0 .. $x ) {
        for my $k ( 0 .. $y ) {
            my $nx = min( $cx + $j, $x );
            my $ny = min( $cy + $k, $y );
            $dp[ $i ][ $j ][ $k ] = min( $dp[ $i ][ $j ][ $k ], $dp[ $i - 1 ][ $j ][ $k ] );
            $dp[ $i ][ $nx ][ $ny ] = min( $dp[ $i ][ $nx ][ $ny ], $dp[ $i - 1 ][ $j ][ $k ] + 1 );
        }
    }
}

say $dp[ $n ][ $x ][ $y ] < $INF
    ? $dp[ $n ][ $x ][ $y ]
    : -1;

exit;

sub min {
    my( $x, $y ) = @_;
    return $y < $x
        ? $y
        : $x;
}

__END__
3
5 6
2 1
3 4
2 3

(0, 0, 0) -> inf. -> 0
(0, 0, 1) -> inf.
(0, 0, 2) -> inf.
(0, 0, 3) -> inf.
(0, 0, 4) -> inf.
(0, 0, 5) -> inf.
(0, 0, 6) -> inf.
(0, 1, 0) -> inf.
(0, 1, 1) -> inf.
(0, 1, 2) -> inf.
(0, 1, 3) -> inf.
(0, 1, 4) -> inf.
(0, 1, 5) -> inf.
(0, 1, 6) -> inf.
(0, 2, 0) -> inf.
(0, 2, 1) -> inf.
(0, 2, 2) -> inf.
(0, 2, 3) -> inf.
(0, 2, 4) -> inf.
(0, 2, 5) -> inf.
(0, 2, 6) -> inf.
(0, 3, 0) -> inf.
(0, 3, 1) -> inf.
(0, 3, 2) -> inf.
(0, 3, 3) -> inf.
(0, 3, 4) -> inf.
(0, 3, 5) -> inf.
(0, 3, 6) -> inf.
(0, 4, 0) -> inf.
(0, 4, 1) -> inf.
(0, 4, 2) -> inf.
(0, 4, 3) -> inf.
(0, 4, 4) -> inf.
(0, 4, 5) -> inf.
(0, 4, 6) -> inf.
(0, 5, 0) -> inf.
(0, 5, 1) -> inf.
(0, 5, 2) -> inf.
(0, 5, 3) -> inf.
(0, 5, 4) -> inf.
(0, 5, 5) -> inf.
(0, 5, 6) -> inf.
(1, 0, 0) -> inf. -> 0
(1, 0, 1) -> inf.
(1, 0, 2) -> inf.
(1, 0, 3) -> inf.
(1, 0, 4) -> inf.
(1, 0, 5) -> inf.
(1, 0, 6) -> inf.
(1, 1, 0) -> inf.
(1, 1, 1) -> inf.
(1, 1, 2) -> inf.
(1, 1, 3) -> inf.
(1, 1, 4) -> inf.
(1, 1, 5) -> inf.
(1, 1, 6) -> inf.
(1, 2, 0) -> inf.
(1, 2, 1) -> inf. -> 1
(1, 2, 2) -> inf.
(1, 2, 3) -> inf.
(1, 2, 4) -> inf.
(1, 2, 5) -> inf.
(1, 2, 6) -> inf.
(1, 3, 0) -> inf.
(1, 3, 1) -> inf.
(1, 3, 2) -> inf.
(1, 3, 3) -> inf.
(1, 3, 4) -> inf.
(1, 3, 5) -> inf.
(1, 3, 6) -> inf.
(1, 4, 0) -> inf.
(1, 4, 1) -> inf.
(1, 4, 2) -> inf.
(1, 4, 3) -> inf.
(1, 4, 4) -> inf.
(1, 4, 5) -> inf.
(1, 4, 6) -> inf.
(1, 5, 0) -> inf.
(1, 5, 1) -> inf.
(1, 5, 2) -> inf.
(1, 5, 3) -> inf.
(1, 5, 4) -> inf.
(1, 5, 5) -> inf.
(1, 5, 6) -> inf.
(2, 0, 0) -> inf. -> 0
(2, 0, 1) -> inf.
(2, 0, 2) -> inf.
(2, 0, 3) -> inf.
(2, 0, 4) -> inf.
(2, 0, 5) -> inf.
(2, 0, 6) -> inf.
(2, 1, 0) -> inf.
(2, 1, 1) -> inf.
(2, 1, 2) -> inf.
(2, 1, 3) -> inf.
(2, 1, 4) -> inf.
(2, 1, 5) -> inf.
(2, 1, 6) -> inf.
(2, 2, 0) -> inf.
(2, 2, 1) -> inf.
(2, 2, 2) -> inf.
(2, 2, 3) -> inf.
(2, 2, 4) -> inf.
(2, 2, 5) -> inf.
(2, 2, 6) -> inf.
(2, 3, 0) -> inf.
(2, 3, 1) -> inf.
(2, 3, 2) -> inf.
(2, 3, 3) -> inf.
(2, 3, 4) -> inf. -> 1
(2, 3, 5) -> inf.
(2, 3, 6) -> inf.
(2, 4, 0) -> inf.
(2, 4, 1) -> inf.
(2, 4, 2) -> inf.
(2, 4, 3) -> inf.
(2, 4, 4) -> inf.
(2, 4, 5) -> inf.
(2, 4, 6) -> inf.
(2, 5, 0) -> inf.
(2, 5, 1) -> inf.
(2, 5, 2) -> inf.
(2, 5, 3) -> inf.
(2, 5, 4) -> inf.
(2, 5, 5) -> inf. -> 2
(2, 5, 6) -> inf.
(3, 0, 0) -> inf. -> 0
(3, 0, 1) -> inf.
(3, 0, 2) -> inf.
(3, 0, 3) -> inf.
(3, 0, 4) -> inf.
(3, 0, 5) -> inf.
(3, 0, 6) -> inf.
(3, 1, 0) -> inf.
(3, 1, 1) -> inf.
(3, 1, 2) -> inf.
(3, 1, 3) -> inf.
(3, 1, 4) -> inf.
(3, 1, 5) -> inf.
(3, 1, 6) -> inf.
(3, 2, 0) -> inf.
(3, 2, 1) -> inf.
(3, 2, 2) -> inf.
(3, 2, 3) -> inf. -> 1
(3, 2, 4) -> inf.
(3, 2, 5) -> inf.
(3, 2, 6) -> inf.
(3, 3, 0) -> inf.
(3, 3, 1) -> inf.
(3, 3, 2) -> inf.
(3, 3, 3) -> inf.
(3, 3, 4) -> inf.
(3, 3, 5) -> inf.
(3, 3, 6) -> inf.
(3, 4, 0) -> inf.
(3, 4, 1) -> inf.
(3, 4, 2) -> inf.
(3, 4, 3) -> inf.
(3, 4, 4) -> inf.
(3, 4, 5) -> inf.
(3, 4, 6) -> inf.
(3, 5, 0) -> inf.
(3, 5, 1) -> inf.
(3, 5, 2) -> inf.
(3, 5, 3) -> inf.
(3, 5, 4) -> inf.
(3, 5, 5) -> inf.
(3, 5, 6) -> inf. -> 2