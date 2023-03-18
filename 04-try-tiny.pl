use strict;
use warnings;
use feature 'say';
use Try::Tiny;

try {
    die "oops!";
} catch {
    warn $_;
} finally {
    say "done";
};

__END__
try(sub {}, &catch(sub {}, &finally(sub {})));
