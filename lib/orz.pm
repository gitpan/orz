use strict; use warnings;
package orz;
our $VERSION = '0.15';

use Module::Compile -base;

sub pmc_compile {
    s/^/# /gm;
    return "# orz...\n$_"; 
}

1;
