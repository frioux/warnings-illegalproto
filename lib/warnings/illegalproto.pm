package warnings::illegalproto;

our $WARN;

use warnings;

BEGIN { $WARN = ${^WARNING_BITS} }

no warnings 'syntax';
use warnings qw(
  ambiguous
  bareword
  digit
  parenthesis
  precedence
  printf
  prototype
  qw
  reserved
  semicolon
);

BEGIN { $WARN = ${^WARNING_BITS} & ~$WARN }

sub unimport {
   if ($] >= 5.012000) {
      warnings->unimport('illegalproto')
   } else {
      ${^WARNING_BITS} = $WARN
   }
}

1;
