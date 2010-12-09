
use strict;
use warnings;



use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'A JSON based config file system.',
  'AUTHOR' => 'JT Smith <RIZEN@cpan.org>',
  'BUILD_REQUIRES' => {},
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Config-JSON',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Config::JSON',
  'PREREQ_PM' => {
    'Any::Moose' => '0.13',
    'File::Temp' => '0.18',
    'JSON' => '2.16',
    'List::Util' => '1.19',
    'Test::Deep' => '0.095',
    'Test::More' => '0.7'
  },
  'VERSION' => '1.5100',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



