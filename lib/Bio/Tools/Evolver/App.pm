package Bio::Tools::Evolver::App;
use lib qw(/home/bruno/lib/Bio-Tools-Evolver-App/lib);
use Moose;
extends 'Bio::Tools::Evolver';
with 'MooseX::Getopt', 'MooseX::SimpleConfig';

our $VERSION = '0.01';

MooseX::Getopt::OptionTypeMap->add_option_type_to_map(
   'BTE::Bio::SimpleAlign' => '=s' );

has '+profile' => (
   traits        => [qw(Getopt)],
   cmd_flag      => 'i',
   cmd_aliases   => 'infile',
   documentation => "File with input sequences",
);

has generations => (
   traits        => [qw(Getopt)],
   is            => 'ro',
   isa           => 'Num',
   required      => 1,
   cmd_aliases   => 'n',
   documentation => "Number of generations",
);

has outfile => (
   traits        => [qw(Getopt)],
   is            => 'ro',
   isa           => 'Str',
   default       => 'outfile.fasta',
   cmd_aliases   => 'o',
   documentation => "File to write the results to",
);

has chartfile => (
   traits        => [qw(Getopt)],
   is            => 'ro',
   isa           => 'Str',
   default       => 'outchart.png',
   documentation => "File name of the output chart",
);

has good_start => (
   traits      => [qw(Getopt)],
   is          => 'ro',
   isa         => 'Bool',
   default     => 1,
   cmd_aliases => 'g',
   documentation =>
       "Whether to inject the alignment's consensus sequence",
);

has '+population' => (
   traits        => [qw(Getopt)],
   documentation => "Number of sequences per generation",
);

has +preserve => (
   traits => [qw(Getopt)],
   documentation =>
       "Number of top-scoring sequences to inject to next generation",
);

has '+mutation' => (
   traits        => [qw(Getopt)],
   documentation => "Mutation rate",
);

has '+crossover' => (
   traits        => [qw(Getopt)],
   documentation => "Crossover rate",
);

has '+cache' => (
   traits => [qw(Getopt)],
   documentation =>
       "Whether to cache the scoring results for improved speed",
);

has '+history' => (
   traits        => [qw(Getopt)],
   documentation => "Store evolution history",
);

has '+parents' => (
   traits        => [qw(Getopt)],
   documentation => "Number of parents",
);

#has '+terminate' => ( traits => [qw(NoGetopt)], );

has '+fitness'   => ( traits => [qw(NoGetopt)], );

has '+selection' => ( traits => [qw(NoGetopt)], );

has '+strategy'  => ( traits => [qw(NoGetopt)], );

has '+matrix'    => ( traits => [qw(NoGetopt)], );

=head1 NAME

App::Evolver::Hydroph - The great new App::Evolver::Hydroph!

=head1 VERSION

Version 0.01

=cut

=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use App::Evolver::Hydroph;

    my $foo = App::Evolver::Hydroph->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 FUNCTIONS

=head2 function1

=cut

=head2 function2

=cut

=head1 AUTHOR

Bruno Vecchi, C<< <vecchi.b at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-app-evolver-hydroph at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=App-Evolver-Hydroph>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc App::Evolver::Hydroph


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=App-Evolver-Hydroph>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/App-Evolver-Hydroph>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/App-Evolver-Hydroph>

=item * Search CPAN

L<http://search.cpan.org/dist/App-Evolver-Hydroph/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 COPYRIGHT & LICENSE

Copyright 2009 Bruno Vecchi, all rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.


=cut

1;    # End of App::Evolver::Hydroph
