package Amazon::EC2::Attachment;
use strict;
use warnings;

1;

__END__

=head1 NAME

Amazon::EC2::Attachment - A class representing a mapping of a Elastic Block
Storage (EBS) volume to a running AMI instance

=head1 SYNOPSIS
 
=head1 METHODS

=head2 Amazon::EC2::Attachment->new($ARRAYREF)

Instaniates a new attachment object with the contents of
C<$ARRAYREF> that presumably came from a call to the Amazon
EC2 API.

Typically, a developer will not call this method directly.
It is used by various other methods in this library that are
working directly with the EC2 API.

=head2 $attach->volume_id

Returns the ID of the volume that is attached to an
instance.

=head2 $attach->volume

Returns a L<Amazon::EC2::Volume> object for the attached
volume.

=head2 $attach->instance_id

Returns the ID of the instance that has mounted the volume.

=head2 $attach->instance

Returns a L<Amazon::EC2::Instance> object for the associated
instance.

=head2 $attach->attach_time

Returns a ISO 8601 timestamp string when the volume was
attached to the instance.

=head2 $attach->device

Returns the device path on the instance that the volume was
attached using.

=head1 SEE ALSO

L<Amazon::EC2>

=head1 AUTHOR & COPYRIGHT

Please see the L<Amazon::EC2> manpage for author, copyright, and
license information.
