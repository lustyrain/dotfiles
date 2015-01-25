#!/usr/bin/perl

use strict;
use LWP::UserAgent;
use Data::Dumper;

my $redirect = "https?:\/\/raw\.github.*\.com\/b4b4r07\/dotfiles\/master\/etc\/install";
my $url = 'http://dot.b4b4r07.com';

my $ua = LWP::UserAgent->new();
my $response = $ua->get($url);
my $uri = $response->request->uri;

if ($uri =~ /$redirect/) {
    print "ok: Redirect to the '$uri'\n";
} else {
    print "NG: Failed to get redirect information about '$url'\n";
    exit 1;
}
