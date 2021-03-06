use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Bio::Tools::Evolver::App',
    AUTHOR              => 'Bruno Vecchi <vecchi.b@gmail.com>',
    VERSION_FROM        => 'lib/Bio/Tools/Evolver/App.pm',
    ABSTRACT_FROM       => 'lib/Bio/Tools/Evolver/App.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Bio-Tools-Evolver-App-*' },
);
