use Tie::File;

tie @file,"Tie::File", "file_1" or die "File not found: $? $!";

if(length(@file) > 0) {
	$next = shift @file;
	print $next."\n";
}

