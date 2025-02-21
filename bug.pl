#!/usr/bin/perl

use strict;
use warnings;

my $string = "This is a test string";
my $pattern = qr/is a/;

if ($string =~ /$pattern/) {
    print "Match found!\n";
} else {
    print "No match found!\n";
}

#This will cause an error if $pattern is not a valid regular expression.
my $anotherPattern = qr/\/;

if ($string =~ /$anotherPattern/) {
    print "Match found!\n";
} else {
    print "No match found!\n";
}
