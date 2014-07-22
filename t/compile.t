use strict;
use File::Basename;
use lib dirname(__FILE__) . '/lib', 'inc';

use Test::Base tests => 1;

no_diff;

my $testdir;
BEGIN {
    $testdir = -e 't' ? 't' : 'test';
    unlink "$testdir/lib/Testorz.pmc";
}

use Testorz;

run_is module => 'pmc';

sub fix_up {
    s/(by orz) \d\.\d\d/$1 x.xx/;
    s/(Module::Compile) \d\.\d\d/$1 x.xx/;
}

sub fix_name {
    s/t\//$testdir\//;
}

__DATA__
=== Compile Testorz
--- module fix_name read_file fix_up: t/lib/Testorz.pmc
--- pmc -trim fix_up
# Generated by orz x.xx (Module::Compile x.xx) - do not edit!
################((( 32-bit Checksum Validator III )))################
#line 1
BEGIN { use 5.006; local (*F, $/); ($F = __FILE__) =~ s!c$!!; open(F)
or die "Cannot open $F: $!"; binmode(F, ':crlf'); if (unpack('%32N*',
$F=readline(*F)) != 0xA3E61550) { use Filter::Util::Call; my $f = $F;
filter_add(sub { filter_del(); 1 while &filter_read; $_ = $f; 1; })}}
#line 1
package Testorz;

sub works {
    print "This works";
}

# orz...
# 
# sub busted {
#     say "orz!";
# }
# 

sub ok {
    print "ok";
}

1;
