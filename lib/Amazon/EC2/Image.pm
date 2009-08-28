package Amazon::EC2::Image;
use strict;
use warnings;

1;

__END__

=head1 NAME

Amazon::EC2::Image - A class representing an Amazon Machine Image (AMI).

=head1 SYNOPSIS
 
=head1 METHODS

=head2 Amazon::EC2::Image->new($ARRAYREF)

Instaniates a new image object with the contents of
C<$ARRAYREF> that presumably came from a call to the Amazon
EC2 API.

Typically, a developer will not call this method directly.
It is used by various other methods in this library that are
working directly with the EC2 API.

=head2 $image->id

Returns the image ID assigned by AWS.

=head2 $image->state

Returns the current state of the AMI. If the operation
returns 'available' then the image successfully registered
and available for launching instances. If the operation
returns 'deregistered' the image has been deregistered and
cannot be launched as an instance.

=head2 $image->owner_id

The AWS access key ID of the owner of the image.

=head2 $image->location

The path to the AMI manfest file itself stored in S3. For
instance,
'ec2-public-images/fedora-8-i386-base-v.1.04.manifest.xml'

=head2 $image->is_public

Returns true (1) if the image can be launched by
anyone (has public launch permissions) or false (0) if it is
launch permission is limited to the owner.

=head2 $image->product_code

Returns the product code string associated with this AMI, if any.

=head2 $image->architecture

Returns the AMI architecture. Valid eturn values are:

=over

=item i386

=item x86_64

=back

=head2 $image->type

Returns the type of AMI for the image object. Valid return values are:

=over

=item machine

=item kernel

=item ramdisk

=back

=head2 $image->kernel_id

Return the kernel ID associated witht his AMI, if any.

=head2 $image->ramdisk_id

Returns the ramdisk ID associated with this AMI, if any.

=head2 $image->get_attributes

Returns a list of attributes and values for the image as an
hash reference. In the event an attribute has multiple
values those values will be stored as its own array
reference in the hash rather the a simple scalar.

=head2 $image->add_attribute_value($name,[%$args])

Adds a value to the attribute defined by the required
case-sensitive C<$name> scalar argument. A hash reference of
arguments, C<%$args>, is also required. Its contents depends
upon the attribute being added.

Returns a boolean value indicating the success of the operation.

B<Note:> Not all attributes can be modified. Currently only
I<launchPermission> and I<productCodes> can be modified.
Only one product code can be set and once set it cannot be
changed.

=head2 $image->remove_attribute_value($name,%$args)

Removes a value to the attribute defined by the required
case-sensitive C<$name> scalar argument. A hash reference of
arguments, C<%$args>, is also required. Its contents depends
upon the attribute being removed.

Returns a boolean value indicating the success of the operation.

B<Note:> Currently only the I<launchPermission> attribute 
can hve a value removed. A product code cannot be
changed once set.

=head2 $image->reset_attributes(@attributes)

An optional argument C<@attributes>, an array of
case-sensitive attribute names, can be passed to the method.
Without this optional argument I<all> attributes for the
image will be reset.

Returns a boolean value indicating the success of the operation.

=head2 Amazon::EC2::Image->register($location)

Passed a required C<$location> parameters defining the S3
bucket URL to register as a launchable AMI. This method will
register the image via the EC2 API and then create an image
object with that information. The new image object is
returned if successful.

=head2 $image->deregister

Deregisters the AMI that it cannot be launched. Returns a
boolean value indicating the success of the operation.

=head1 SEE ALSO

L<Amazon::EC2>

=head1 AUTHOR & COPYRIGHT

Please see the L<Amazon::EC2> manpage for author, copyright, and
license information.
