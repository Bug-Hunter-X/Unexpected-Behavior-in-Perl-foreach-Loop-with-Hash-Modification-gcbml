my %hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3
);

foreach my $key (keys %hash) {
    print "$key => $hash{$key}\n";
}

#This will print:
a => 1
b => 2
c => 3

#However, if you modify the hash inside the loop, you'll get unexpected results.
foreach my $key (keys %hash) {
    delete $hash{$key};
    print "$key => $hash{$key}\n";
}

#This may print:
a => 
b => 
c => 