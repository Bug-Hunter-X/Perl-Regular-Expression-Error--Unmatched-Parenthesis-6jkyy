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

#Corrected regular expression
my $anotherPattern = qr/\//;

if ($string =~ /$anotherPattern/) {
    print "Match found!\n";
} else {
    print "No match found!\n";
}

#Another way to handle potential errors
eval {
    my $pattern = qr/\(/;
    if ($string =~ /$pattern/) {
        print "Match found!\n";
    } else {
        print "No match found!\n";
    }
} or do {
    warn "Error in regular expression: $@\n";
}
