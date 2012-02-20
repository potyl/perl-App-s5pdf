use strict;
use warnings;

use ExtUtils::MakeMaker;
use File::Spec::Functions 'catfile';

sub main {

    my $site = 'https://github.com/potyl/perl-App-s5pdf';
    my $script = catfile('bin', 's5pdf');

    WriteMakefile(
        NAME          => 'App::s5pdf',
        ABSTRACT      => "Convert an S5 presentation to PDF",
        AUTHOR        => 'Emmanuel Rodriguez <potyl@cpan.org>',
        VERSION_FROM  => $script,
        PREREQ_PM => {
            'Getopt::Long'   => 0,
            'Pod::Usage'     => 0,
            'URI'            => 0,
            'File::Basename' => 0,
            'Cwd'            => 0,

            'Gtk3'                        => 0,
            'Gtk3::WebKit'                => 0,
            'Cairo::GObject'              => 0,
            'Glib'                        => 0,
        },
        LICENSE => 'perl',
        EXE_FILES => [ $script ],

        META_MERGE => {
            resources => {
                homepage   => $site,
                bugtracker => "$site/issues",
                repository =>  $site,
            },
        },
    );


    return 0;
}


exit main() unless caller;
