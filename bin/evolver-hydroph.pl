#!/usr/bin/perl
use lib qw(/home/bruno/lib/Bio-Tools-Evolver-App/lib);
use lib qw(/home/bruno/lib/Bio-Tools-Evolver/lib);
use Modern::Perl;
use Bio::Tools::Evolver::App;
use Bio::SeqIO;
#use Devel::SimpleTrace;
use Data::Dump::Streamer;

sub hydroph_doolittle {
   my $seq = shift;
   my @res = split '', $seq;
   return grep { $_ =~ /[VILA]/ } @res;
}

my $ev = Bio::Tools::Evolver::App->new_with_options(
   fitness => \&hydroph_doolittle,
);

if ( $ev->good_start ) {

   # inject consensus sequence here
}

Dump($ev->profile);

say "Evolving...";
$ev->evolve( $ev->generations );
say "Done.";

my $no_seq_to_get = $ev->population < 5 ? $ev->population : 5;
say "Writing best ", $no_seq_to_get, " sequences to ", $ev->outfile;

my @fittest = $ev->getFittest($no_seq_to_get);
my $seqO    = Bio::SeqIO->new(
   -file   => ">" . $ev->outfile,
   -format => 'fasta',
);

while ( my $seq = shift @fittest ) {
   $seqO->write_seq($seq);
}
say "Done.";

say "Writing chart to ", $ev->chartfile;
$ev->chart(
   -width => 1042,
   -height => 768,
   -filename => $ev->chartfile,
);
say "Done.";
