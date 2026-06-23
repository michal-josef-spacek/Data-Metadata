use strict;
use warnings;

use Data::Metadata::KeyValue;
use English;
use Error::Pure::Utils qw(clean);
use Test::More 'tests' => 4;
use Test::NoWarnings;

# Test.
my $obj = Data::Metadata::KeyValue->new(
	'id' => 7,
	'key' => 'text',
	'value' => 'This is text',
);
isa_ok($obj, 'Data::Metadata::KeyValue');

# Test.
$obj = Data::Metadata::KeyValue->new(
	'key' => 'text',
);
isa_ok($obj, 'Data::Metadata::KeyValue');

# Test.
eval {
	Data::Metadata::KeyValue->new;
};
is($EVAL_ERROR, "Parameter 'key' is required.\n",
	"Parameter 'key' is required.");
clean();
