package Amazon::EC2::Instance;

use strict;
use warnings;

__END__

=head1 NAME

Amazon::EC2::Instance - A class representing a Amazon
Machine Image (AMI) that has been launched in to operation.

=head1 SYNOPSIS
 
=head1 METHODS

=head2 Amazon::EC2::Instance->new($ARRAYREF)

Instaniates a new instance object with the contents of
C<$ARRAYREF> that presumably came from a call to the Amazon
EC2 API.

Typically, a developer will not call this method directly.
It is used by various other methods in this library that are
working directly with the EC2 API.

=head2 $instance->id

Returns the ID of the instance. 

=head2 $instance->state

Returns a L<Amazon::InstanceState> object.

=head2 $instance->type

Returns the type of instance launched.

EXPAND ON TYPE

=head2 $instance->console_output

Returns a L<Amazon::ConsoleOutput> objec.

=head2 $instance->launch_index

Returns an integer representing the AMI launch index that
can be used to find the instance within the launch group.

=head2 $instance->dns_name

Returns the public DNS name assigned to the instance. This
DNS name is contactable from outside the Amazon EC2 network.
This element remains empty until the instance enters a
running state.

=head2 $instance->image_id

Returns the AMI id of the image currently running in this
instance.

=head2 $instance->image

Returns a L<Amazon::EC2::Image> object for the image
currently running in this instance.

=head2 $instance->key_name

Returns the key pair name the instance was launched using.

=head2 $instance->launch_time

Returns the time the instance was started in ISO 8601 format.

=head2 $instance->zone

Returns the availability zone the instance is running.

=head2 $instance->private_dns_name

Returns the private DNS name assigned to the instance. This
DNS name can only be used inside the Amazon EC2 network.
This element remains empty until the instance enters a
running state.

=head2 $instance->product_code

Returns the product code associated with the instance AMI, if any

=head2 $instance->reason

Returns the reason for the most recent state transition.

=head2 $instance->confirm_product($code)

This operation can only be executed by the owner of the AMI.
This feature is useful when an AMI owner is providing
support and wants to verify whether a user's instance is
eligible.

=head2 $instance->reboot

This operation will issue a request to reboot the instance. 

Returns a boolean value indicating the success of the operation.

=head2 $instance->terminate

This operation will issue a request to begin terminating the instance. 

Returns a boolean value indicating the success of the operation.

=head1 SEE ALSO

L<Amazon::EC2>

=head1 AUTHOR & COPYRIGHT

Please see the L<Amazon::EC2> manpage for author, copyright, and
license information.
