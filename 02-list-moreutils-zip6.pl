use strict;
use warnings;

use Data::Dumper;
use List::MoreUtils qw(zip6);

my @xs = (1);

# @xsが33個
print Dumper zip6(
    @xs,@xs,@xs,@xs,@xs,@xs,@xs,@xs,
    @xs,@xs,@xs,@xs,@xs,@xs,@xs,@xs,
    @xs,@xs,@xs,@xs,@xs,@xs,@xs,@xs,
    @xs,@xs,@xs,@xs,@xs,@xs,@xs,@xs,
    @xs,
);
