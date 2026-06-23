package Data::Metadata::KeyValue;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils 0.28 qw(check_number_id check_required);

our $VERSION = 0.06;

has id => (
	is => 'ro',
);

has key => (
	is => 'ro',
);

has value => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'id'.
	check_number_id($self, 'id');

	# Check 'key'.
	check_required($self, 'key');

	return;
}

1;
