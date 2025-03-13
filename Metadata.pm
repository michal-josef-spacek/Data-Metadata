package Data::Metadata;

use strict;
use warnings;

use Mo qw(build default is);
use Mo::utils 0.28 qw(check_array_object check_number_id);

our $VERSION = 0.06;

has id => (
	is => 'ro',
);

has key_values => (
	default => [],
	is => 'ro',
);

sub BUILD {
	my $self = shift;

	# Check id.
	check_number_id($self, 'id');

	# Check key_values.
	check_array_object($self, 'key_values', 'Data::Metadata::KeyValue');

	return;
}

1;
