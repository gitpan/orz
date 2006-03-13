use Test::Base tests => 1;

use lib 't/lib';

BEGIN { unlink 't/lib/Testorz.pmc' }

use Testorz;

run_is module => 'pmc';

__DATA__
=== Compile Testorz
--- module read_file: t/lib/Testorz.pmc
--- pmc -trim
# Generated .pmc file - do not edit!
package Testorz;

sub works {
    print "This works";
}

# orz...
# 
# sub busted {
#     say "orz!";
# }

sub ok {
    print "ok";
}

1;

