package Data::Metadata;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.28 qw(check_number_id);

our $VERSION = 0.06;

has id => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check id.
	check_number_id($self, 'id');

	return;
}

1;
