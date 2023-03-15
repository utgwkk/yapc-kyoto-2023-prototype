use strict;
use warnings;

use List::MoreUtils qw(zip6);

my @xs;

# @xsが33個
zip6(
    @xs,@xs,@xs,@xs,@xs,@xs,@xs,@xs,
    @xs,@xs,@xs,@xs,@xs,@xs,@xs,@xs,
    @xs,@xs,@xs,@xs,@xs,@xs,@xs,@xs,
    @xs,@xs,@xs,@xs,@xs,@xs,@xs,@xs,
    @xs,
);
