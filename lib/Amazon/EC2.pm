package Amazon::EC2;
use strict;
use warnings;

our $VERSION = '0.01';

1;

__END__

=begin pod

=head1 NAME

Amazon::EC2 - A portable client library for working with and
managing Amazon EC2 services.

=head1 SYNOPSIS
  
=head1 DESCRIPTION

Amazon::EC2 - A portable client library for working with and
managing Amazon Elastic Computing Cloud (EC2) services.

=head1 METHODS

=head2 new 

Create a new EC2 client object. Takes some arguments:

=over

=item aws_access_key_id 

Use your Access Key ID as the value of the AWSAccessKeyId parameter
in requests you send to Amazon Web Services (when required). Your
Access Key ID identifies you as the party responsible for the
request.

=item aws_secret_access_key 

Since your Access Key ID is not encrypted in requests to AWS, it
could be discovered and used by anyone. Services that are not free
require you to provide additional information, a request signature,
to verify that a request containing your unique Access Key ID could
only have come from you.

B<DO NOT INCLUDE THIS IN SCRIPTS OR APPLICATIONS YOU
DISTRIBUTE. YOU'LL BE SORRY.>

=back

=head1 TESTING

Testing EC2 is a tricky thing. Amazon wants to charge you a bit of 
money each time you use their service. And yes, testing counts as using.
Because of this, the application's test suite skips anything approaching 
a real test unless you set these three environment variables:

=over 

=item AMAZON_EC2_EXPENSIVE_TESTS

Doesn't matter what you set it to. Just has to be set

=item AWS_ACCESS_KEY_ID 

Your AWS access key

=item AWS_ACCESS_KEY_SECRET

Your AWS sekkr1t passkey. Be forewarned that setting this environment variable
on a shared system might leak that information to another user. Be careful.

=back

=head2 $ec2->volumes

Returns an array of L<Amazon::EC2::Volume> objects
associated with the EC2 account.

=head2 $ec2->images

Returns an array of L<Amazon::EC2::Image> objects for the
EC2 account.

=head2 $ec2->instances

Returns an array of L<Amazon::EC2::Instance> objects for the
EC2 account.

=head2 $ec2->run_instances(%params)

This method will start instances of AMIs on EC2. The
parameters indicate which AMI to instantiate and how many, and 
what properties they have:

=over

=item image_id

The AMI ID you want to create instances of.

=item min_count

The minimum number of instances to launch of the AMI.

=item max_count

The maximum number of instances to launch of the AMI.

=item key_name

The keypair name to associate the instances with. If
omitted, will use your default keypair.

=item instance_type

Specifies the type of instance to start.  The options are:

=over

=item m1.small (default)

1 EC2 Compute Unit (1 virtual core with 1 EC2 Compute Unit). 32-bit, 1.7GB RAM, 160GB disk

=item m1.large: Standard Large Instance

4 EC2 Compute Units (2 virtual cores with 2 EC2 Compute Units each). 64-bit, 7.5GB RAM, 850GB disk

=item m1.xlarge: Standard Extra Large Instance

8 EC2 Compute Units (4 virtual cores with 2 EC2 Compute Units each). 64-bit, 15GB RAM, 1690GB disk

=item c1.medium: High-CPU Medium Instance

5 EC2 Compute Units (2 virutal cores with 2.5 EC2 Compute Units each). 32-bit, 1.7GB RAM, 350GB disk

=item c1.xlarge: High-CPU Extra Large Instance

20 EC2 Compute Units (8 virtual cores with 2.5 EC2 Compute Units each). 64-bit, 7GB RAM, 1690GB disk

=back 

=item availability_zone

The availability zone you want to run the instance.

=item kernel_id

The id of the kernel you want to launch the instance.

=item ramdisk_id
  
The id of the ramdisk you want to launch the instance.

=back

Returns a L<Amazon::EC2::ReservationInfo> object on success.

=head1 TO DO

=over

=item Currently a developer cannot get at the underlying HTTP
responses between the client library and the EC2 API web
service. This will be addressed in later phases.

=item Expand key pair management functionality.

=item Expand product code and availability zone support.

=item Implement support for addresses.

Methods in Amazon::EC2 include allocate_address, addresses,
availability_zones, disassociate_address, & release_address

=item Implement security groups and users.

=item L<Bezos> support.

=item The snapshot class seems ripe for some methods of
turning a snapshot in to a volume.

=back

=head1 SUPPORT

Bugs should be reported via the CPAN bug tracker at

<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Amazon-EC2>

For other issues, contact the author.

=head1 AUTHOR

=head1 SEE ALSO

=head1 COPYRIGHT AND LICENCE

The software is released under the Artistic License. The
terms of the Artistic License are described at
http://www.perl.com/language/misc/Artistic.html. Except
where otherwise noted, Amazon::EC2 is Copyright 2008-2009,
Timothy Appnel, tima@cpan.org. All rights reserved.

=cut

=end pod
