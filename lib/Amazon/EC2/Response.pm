package Amazon::EC2::Response;
use strict;
use warnings;

1;

__END__

=head1 NAME

Amazon::EC2::Response - A class representing a response from
a EC2 API request.

=head1 SYNOPSIS
 
=head1 METHODS

=head2 Amazon::EC2::Response->new($ARRAYREF)

Instaniates a new response object with the contents of
C<$ARRAYREF> that presumably came from a call to the Amazon
EC2 API.

Typically, a developer will not call this method directly.
It is used by various other methods in this library that are
working directly with the EC2 API.

=head2 $response->request_id

Returns the request ID that EC2 assigned to the request that
generated this response.

=head2 $response->http_response

Returns the L<HTTP::Response> object used to construct this
response object.

=head2 $response->http_status

Returns the HTTP status code for the underlying response.

=head2 $response->content

Returns the parsed XML contents of the response.

=head2 $response->is_success

Returns boolean value indicating if the request was
successful.

=head2 $response->is_error

Returns boolean value indicating if the request failed and
has errors.

=head1 SEE ALSO

L<Amazon::EC2>

=head1 AUTHOR & COPYRIGHT

Please see the L<Amazon::EC2> manpage for author, copyright, and
license information.
