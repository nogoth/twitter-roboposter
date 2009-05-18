#!/usr/bin/perl
 
use Net::Twitter;
use Data::Dumper;
 
$phrase = <>;
my $twit = Net::Twitter->new(username=>'username', password=>'password');
 
$result = $twit->update($phrase);
 
print Dumper $result;
