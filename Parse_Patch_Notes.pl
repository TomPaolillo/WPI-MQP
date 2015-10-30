#!/usr/bin/perl
use strict;

my $championName = $ARGV[0];

	

my $inputFile = "\\documents\\school\\mqp\\raw_patch_note_files\\ " . $championName . "_patch_notes_raw.txt";
my $outputFile = "\\documents\\school\\mqp\\patch_note_files\\ " . $championName . "_patch_notes.txt";

open(my $ifh, '<:encoding(UTF-8)', $inputFile) or die "Could not open file '$inputFile' $!";	
open(my $ofh, '>', $outputFile) or die "Could not open file '$outputFile' $!";	


my $switch = 0;
while (my $row = <$ifh>) {
	chomp $row;
	
	if (index($row, 'Patch History') != -1){
		$switch = 1;
		$row = "Patch History:";
	}

	if(index($row, 'References') != -1){
		$switch = 0;
	}
	
	if($switch == 1){
		$row =~ s/<[^>]*>//g;
		print($ofh "$row\n");
	}
}

close $ifh;
close $ofh;


