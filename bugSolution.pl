my %hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3
);

#Solution 1: Iterate over a copy of the keys
my @keys = keys %hash;
foreach my $key (@keys) {
    delete $hash{$key};
    print "$key => $hash{$key}\n";
}

#Solution 2: Iterate in reverse order
for (reverse sort keys %hash) {
    delete $hash{$_};
    print "$_ => $hash{$_}\n";
}

#Solution 3: Use a while loop
while (my ($key, $value) = each %hash) {
    delete $hash{$key};
    print "$key => $value\n";
} 