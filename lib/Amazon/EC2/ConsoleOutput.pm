package Amazon::EC2::ConsoleOutput;
use strict;
use warnings;


1;

__END__

=head1 NAME

Amazon::EC2::ConsoleOutput - A class container the output
from the console of an instance.

=head1 SYNOPSIS
 
=head1 METHODS

=head2 Amazon::EC2::ConsoleOutput->new($ARRAYREF)

Instaniates a new instance state object with the contents of
C<$ARRAYREF> that presumably came from a call to the Amazon
EC2 API.

Typically, a developer will not call this method directly.
It is used by various other methods in this library that are
working directly with the EC2 API.

=head2 $state->instance_id

Returns the ID of the instance that the state report was
generated.

=head2 $state->instance

Returns a L<Amazon::EC2::Instance> object of the associated
instance.

=head2 $state->timestamp

Returns the time the console output was retreived as an ISO 8601 timestamp.

=head2 $state->output

Returns the console output itself.

=head1 SEE ALSO

L<Amazon::EC2>

=head1 AUTHOR & COPYRIGHT

Please see the L<Amazon::EC2> manpage for author, copyright, and
license information.
