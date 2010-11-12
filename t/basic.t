use strictures 1;
use Test::More;
no warnings::illegalproto;

my $x = eval "sub (frew) { 1 }";
is 1, $x->(), 'does not die on "bad" prototype';

done_testing;
