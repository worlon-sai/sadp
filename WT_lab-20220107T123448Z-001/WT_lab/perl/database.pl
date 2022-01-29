use DBI;
use strict;

my $driver = "mysql"; 
my $database = "wtlab";
my $dsn = "DBI:$driver:database=$database";
my $userid = "root";
my $password = "";

my $dbh = DBI->connect($dsn, $userid, $password ) or die $DBI::errstr;

my $sth = $dbh->prepare("SELECT username
                        FROM logintable");
$sth->execute() or die $DBI::errstr;
print "Number of rows found :" + $sth->rows;
while (my @row = $sth->fetchrow_array()) {
   my ($user_name) = @row;
   print "user Name = $user_name\n";
}
$sth->finish();