%student = ('188T1A0501' => 'ABDUL AFROZ', '188T1A0502' => 'ADUSUMILLI SASI BHARATHI', '188T1A0503' => 'AJMEERU GOWTHAMI');


print "student data \n";
foreach my $key (keys %student)
{
      
    # do stuff
    $value = $student{$key};
    print "Name of $key is $value\n"; 
}