use strict;
use warnings;

use Data::Dumper;

sub main{
    my $input = 'test.csv';

    unless(open(INPUT, $input)){
        die "\nCannot open $input";
    }

    my @lines;

    while(my $line = <INPUT>){

        chomp $line;
        print $line;

        my @values = split /\s*,\s*/, $line;

       # print join '|', @values;

       print Dumper(@values);

      

   

    }
    
    close INPUT;
    
    foreach my $line(@lines){
        print $line . "\n";
    }

}

main();
