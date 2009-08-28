package Amazon::EC2::Error;

use strict;
use warnings;

__END__

=head1 NAME

Amazon::EC2::Error - A class representing an EC2 API error.

=head1 SYNOPSIS

=head1 METHODS

=head2 Amazon::EC2::Error->new($ARRAYREF)

Instaniates a new image object with the contents of
C<$ARRAYREF> that presumably came from a call to the Amazon
EC2 API.

Typically, a developer will not call this method directly.
It is used by various other methods in this library that are
working directly with the EC2 API.

=head2 code

Returns the code of this error returned from associated the
EC2 API request.

=head2 message

Returns a description of this error returned from the
associated EC2 API request.

=head1 SEE ALSO

L<Amazon::EC2>

=head1 AUTHOR & COPYRIGHT

Please see the L<Amazon::EC2> manpage for author, copyright, and
license information.
