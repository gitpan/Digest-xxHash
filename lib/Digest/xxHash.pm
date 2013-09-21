package Digest::xxHash;
use strict;
use base qw(Exporter);
use Config ();
use XSLoader;
BEGIN {
    our $VERSION = '0.99';
    XSLoader::load __PACKAGE__, $VERSION;
}

our @EXPORT_OK = qw[xxhash xxhash_hex];

sub xxhash_hex{unpack('H8', pack('N', xxhash(@_)))};

1;
__END__

=head1 NAME

Digest::xxHash - xxHash Implementation For Perl

=head1 SYNOPSIS

    use Digest::xxHash qw[xxhash xxhash_hex];

    my $hash = xxhash( $data, $seed );
    
    my $hex  = xxhash_hex( $data, $seed );

=head1 DESCRIPTION

This module provides an interface to xxHash functions.

=head1 FUNCTIONS

=head2 $h = xxhash( $data, $seed )

Calculates a 32 bit hash.

=head2 $h = xxhash_hex( $data, $seed )

Calculates a 32 bit hash and returns it as a hex string.

=head1 AUTHOR

Sanko Robinson C<< <sanko@cpan.org> >>

xxHash by Yann Collet.

=cut