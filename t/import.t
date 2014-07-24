use strict;
use Test::More;

use warnings::illegalproto;

$SIG{__WARN__} = sub { die $_[0] };

my $x = eval "sub (frew) { 1 }";
like $@, qr/prototype/, 'dies on "bad" prototype';

eval 'my $f = undef . "foo"';
is $@, '', 'other warnings not enabled';

done_testing;
