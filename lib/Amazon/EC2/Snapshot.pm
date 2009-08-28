package Amazon::EC2::Snapshot;
use strict;
use warnings;

1;

__END__

=head1 NAME

Amazon::EC2::Snapshot - A class representing a snapshot of
an Elastic Block Storage (EBS) volume.

=head1 SYNOPSIS
 
=head1 METHODS

=head2 Amazon::EC2::Snapshot->new($ARRAYREF)

Instaniates a new snapshot object with the contents of
C<$ARRAYREF> that presumably came from a call to the Amazon
EC2 API.

Typically, a developer will not call this method directly.
It is used by various other methods in this library that are
working directly with the EC2 API.

=head2 $snapshot->id

Returns the unique ID of the snapshot.

=head2 $snapshot->status

Returns the snapshot's status.

NOTE: Need to expand on this.

=head2 $snapshot->volume_id

Returns the volume ID the snapshot was taken from.

=head2 $snapshot->volume

Returns a L<Amazon::EC2::Volume> object of the volume the
snapshot was taken from.

=head2 $snapshot->start_time

Returns a timestamp in ISO 8601 format representing when a
snapshot was started/taken.

=head2 $snapshot->progress

Returns the current progress of the snapshot as a perentage.

QUESTION: Is this in integer or float? A value between 0 to
1 or a value between 0 to 100?

NOTE: Each call to progress with issue a new API call to
provuide the most up to date progress status. Once the EC2
API returns 100% the library stops issues calls to the API
and simply returns the value of 100%.

=head2 $snapshot->delete

Deletes the snapshot.

Returns a boolean value indicating the success of the operation.

NOTE:: Expand on this.

=head1 SEE ALSO

L<Amazon::EC2>

=head1 AUTHOR & COPYRIGHT

Please see the L<Amazon::EC2> manpage for author, copyright, and
license information.
