package Amazon::EC2::InstanceState;
use strict;
use warnings;

1;

__END__

=head1 NAME

Amazon::EC2::InstanceState - a class representing the state
of an instance.

=head1 SYNOPSIS
 
=head1 METHODS

=head2 Amazon::EC2::InstanceState->new($ARRAYREF)

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
instance for the state.

=head2 $state->timestamp

Returns the time of the state as an ISO 8601 timestamp.

=head2 $state->code

Returns an integer representing the instance state. Valid responses are:

=over

=item 0: pending

=item 16: running

=item 32: shutting-down

=item 48: terminated

=back

=head2 $state->name

Returns the current named state of the instance. Valid responses are:

=over

=item pending

The instance is in the process of being launched.

=item running

The instance has launched though booting may not be completed.

=item shutting-down

The instance is in the process of shutting down.

=item terminated

The instance has been terminated and is awaiting garbage collection by EC2.

=back

=head1 SEE ALSO

L<Amazon::EC2>

=head1 AUTHOR & COPYRIGHT

Please see the L<Amazon::EC2> manpage for author, copyright, and
license information.
