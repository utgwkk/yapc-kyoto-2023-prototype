use strict;
use warnings;
use Data::Dumper;

sub mypush (\@@) {
    my ($arr_ref, @elems) = @_;
    my $last = scalar @$arr_ref;
    for my $elem (@elems) {
        $arr_ref->[$last++] = $elem;
    }
}

use feature 'signatures';

sub mypush2 :prototype(\@@) ($arr_ref, @elems) {
    my $last = scalar @$arr_ref;
    for my $elem (@elems) {
        $arr_ref->[$last++] = $elem;
    }
}

my @xs;
mypush @xs, 1, 2, 3, 4, 5;
mypush2 @xs, 1, 2, 3, 4, 5;
print Dumper \@xs;

no feature 'signatures';

sub mymap (&@) {
    my ($code, @arr) = @_;
    my @res;
    for my $elem (@arr) {
        local $_ = $elem;
        push @res, $code->($elem);
    }
    return @res;
}

print Dumper [mymap { $_ + 2 } (1, 2, 3, 4, 5) ];
