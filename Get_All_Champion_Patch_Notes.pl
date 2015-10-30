#!/usr/bin/perl
use strict;

my @championList = qw( Zed Alistar Gnar Lucian Twisted_Fate Cho'Gath Tahm_Kench Jayce);



foreach my $champion (@championList){
	system("D:");
	system("cd Documents/School/MQP");
	system("GetChampionPatchNotes.au3 " . $champion);
	wait;
	system("D:");
	system("cd Documents/School/MQP");
	system("perl Parse_Patch_Notes.pl " . $champion);
}
