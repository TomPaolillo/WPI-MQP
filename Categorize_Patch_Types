#!/usr/bin/perl
use strict;

my $championName = $ARGV[0];

	

my $inputFile = "\\documents\\school\\mqp\\patch_note_files\\ " . $championName . "_patch_notes.txt";
my $outputFile = "\\documents\\school\\mqp\\categorized_patch_notes\\ " . $championName . "_categorized_patch_notes.txt";

open(my $ifh, '<', $inputFile) or die "Could not open file '$inputFile' $!";	
open(my $ofh, '>', $outputFile) or die "Could not open file '$outputFile' $!";	



while (my $row = <$ifh>) {
	chomp $row;
	my $reversed = 0;
	
	if (index($row, ': ') != -1){
		$row =~ s/:[^]*[^]*//g; 
		print($ofh "\n$row:\n");
	}
	
	if ((index($row, 'Cost') != -1) or (index($row, 'cost') != -1) or (index($row, 'Cooldown') != -1) or (index($row, 'cooldown') != -1) or (index($row, 'Cast time') != -1) or (index($row, 'cast time') != -1)){
		$reversed = 1;
	}
	
	if (index($row, 'increased') != -1){
		if ($reversed == 0){
			print($ofh "buff\n");
		}
		if ($reversed == 1){
			print($ofh "nerf\n");
		}
	}
	
	if ((index($row, 'decreased') != -1) or (index($row, 'reduced') != -1)){
		if ($reversed == 0){
			print($ofh "nerf\n");
		}
		if ($reversed == 1){
			print($ofh "buff\n");
		}
	}
	
	if (index($row, 'changed') != -1){
		print($ofh "rework\n");
	}
}

close $ifh;
close $ofh;


