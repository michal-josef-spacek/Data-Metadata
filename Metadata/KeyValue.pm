package Data::Metadata::KeyValue;

use strict;
use warnings;

use Mo qw(build is);
use Mo::utils qw(check_required);
use Mo::utils::Number 0.08 qw(check_positive_natural);

our $VERSION = 0.01;

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
	check_positive_natural($self, 'id');

	# Check 'key'.
	check_required($self, 'key');

	return;
}

1;
