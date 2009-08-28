use ExtUtils::MakeMaker;
use strict;

WriteMakefile(
    'NAME'             => '##MAIN_MODULE##',
    'VERSION_FROM'     => '##MAIN_MODULE_REL_PATH##',
    'ABSTRACT_FROM'    => '##MAIN_MODULE_REL_PATH##',
    'MIN_PERL_VERSION' => '##MIN_PERL_VERSION##',
    'LICENSE'          => 'perl',
    'AUTHOR'           => 'Timothy Appnel <tima@cpan.org>',
    'PREREQ_PM'        => {
    	##DEPENDENCIES_LIST_DUMP##
    },
    'META_MERGE'       => {
        'resources' => {
            'license'    => 'http://dev.perl.org/licenses/',
            'repository' => 'http://github.com/tima/##GITHUB##',
            #'bugtracker' =>
            #  'http://rt.cpan.org/Public/Dist/Display.html?Name=Text-Greeking',
        },
    },
);
