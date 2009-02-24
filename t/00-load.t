#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Bio::Tools::Evolver::App' );
}

diag( "Testing Bio::Tools::Evolver::App $Bio::Tools::Evolver::App::VERSION, Perl $], $^X" );
