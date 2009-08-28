package Amazon::EC2::Volume;

use strict;
use warnings;

__END__

=head1 NAME

Amazon::EC2::Volume - A class representing a Elastic Block
Storage (EBS) volume.

=head1 SYNOPSIS
 
=head1 METHODS

=head2 Amazon::EC2::Volume->new($ARRAYREF)

Instaniates a new volume object with the contents of
C<$ARRAYREF> that presumably came from a call to the Amazon
EC2 API.

Typically, a developer will not call this method directly.
It is used by various other methods in this library that are
working directly with the EC2 API.

=head2 $vol->id

Returns the unique ID of the volume.

=head2 $vol->status

Returns the volume's status.

NOTE: Expand this description

=head2 $vol->zone

Returns a string representing the AWS availbility zone the
the volume was created in.

=head2 $vol->attachments

Returns an array of L<Amazon::EC2::Attachement> objects that
map the volume to instances.

B<NOTE: This is how L<Net::Amazon::EC2::Volume> works but I
thought I read that a volume can only be mounted by one
instance at a time. Returning an array of attachmenets
wouldn't make sense here if true. Need to check this.>

=head2 $vol->creation_time

Returns the creation time of the volume as a ISO 8601 timestamp.

=head2 $vol->snapshot_id

Returns an ID string identifying the snapshot used, if any,
to create the volume.

=head2 $vol->snapshot

Returns a L<Amazon::EC2::Snapshot> object representing the
snapshot used, if any, to create the volume.

=head2 $vol->snapshots

Returns an array of L<Amazon::EC2::Snapshot> objects that
have been created for the volume.

=head2 $vol->size

Returns the size of the volume in GiB (1GiB = 2^30 octects).

=head2 $vol->delete

Deletes the volume.

Returns a boolean value indicating the success of the operation.

NOTE:: Expand on this.

=head1 SEE ALSO

L<Amazon::EC2>

=head1 AUTHOR & COPYRIGHT

Please see the L<Amazon::EC2> manpage for author, copyright, and
license information.
