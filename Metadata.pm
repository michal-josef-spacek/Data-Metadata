package Data::Metadata;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils::Array qw(check_array_object check_array_required);
use Mo::utils::Number 0.08 qw(check_positive_natural);

our $VERSION = 0.01;

has id => (
	is => 'ro',
);

has key_values => (
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check 'id'.
	check_positive_natural($self, 'id');

	# Check 'key_values'.
	check_array_object($self, 'key_values', 'Data::Metadata::KeyValue');
	check_array_required($self, 'key_values');

	return;
}

1;
