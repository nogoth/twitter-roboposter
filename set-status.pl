#!/usr/bin/perl
 
use Net::Twitter;
use Data::Dumper;
use YAML::XS;

open FP, "config.yml";

while (<FP>){
	$config = $config.$_;
}
close FP;

my $options = Load $config;

if ($options->{"username"} && $options->{"password"}) {
    $phrase = <>;
    $username = $options->{"username"};
    $password = $options->{"password"};

    my $twit = Net::Twitter->new(username=>$username, password=>$password);
    
    $result = $twit->update($phrase);
    
    print Dumper $result;
}
