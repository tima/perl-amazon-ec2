package Amazon::EC2::Reservation;
use strict;
use warnings;

1;

__END__

=head1 NAME

Amazon::EC2::Reservation - A class representing a
reservation to run instances.

=head1 SYNOPSIS
 
=head1 METHODS

=head2 Amazon::EC2::Reservation->new($ARRAYREF)

Instaniates a new reservation object with the contents of
C<$ARRAYREF> that presumably came from a call to the Amazon
EC2 API.

Typically, a developer will not call this method directly.
It is used by various other methods in this library that are
working directly with the EC2 API.

=head2 $reservation->id

Returns the unique ID attached to the reservation.

=head2 $reservation->owner_id

The AWS account ID of the reservation maker.

=head2 $reservation->group_set

Returns the unique group ID for the instances launched by
this reservation.

NOTE: Explain better.

=head2 $reservation->instances_set

Returns an array of L<Amazon::EC2::Instance> objects that
represent the instances that where created as part of a
C<run_instances> reservation.

=head1 SEE ALSO

L<Amazon::EC2>

=head1 AUTHOR & COPYRIGHT

Please see the L<Amazon::EC2> manpage for author, copyright, and
license information.
