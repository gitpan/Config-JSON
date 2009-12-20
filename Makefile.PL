
use strict;
use warnings;



use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Config-JSON',
  NAME      => 'Config::JSON',
  AUTHOR    => "JT\ Smith\ \<RIZEN\@cpan\.org\>",
  ABSTRACT  => "A\ JSON\ based\ config\ file\ system\.",
  VERSION   => '1.5000',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
    "Test::More" => '0.7',
    "List::Util" => '1.19',
    "File::Temp" => '0.18',
    "JSON" => '2.16',
    "Test::Deep" => '0.095',
    "Moose" => '0.93',
  },
  test => {TESTS => 't/*.t'}
);

