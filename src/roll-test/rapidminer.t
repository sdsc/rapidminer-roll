#!/usr/bin/perl -w
# rapidminer roll installation test.  Usage:
# rapidminer.t [nodetype]
#   where nodetype is one of "Compute", "Dbnode", "Frontend" or "Login"
#   if not specified, the test assumes either Compute or Frontend

use Test::More qw(no_plan);

my $appliance = $#ARGV >= 0 ? $ARGV[0] :
                -d '/export/rocks/install' ? 'Frontend' : 'Compute';
my $installedOnAppliancesPattern = '.';
my $isInstalled = -d '/opt/rapidminer';
my $output;

# rapidminer-common.xml
if($appliance =~ /$installedOnAppliancesPattern/) {
  ok($isInstalled, 'rapidminer installed');
} else {
  ok(! $isInstalled, 'rapidminer not installed');
}
SKIP: {

  skip 'rapidminer not installed', 4 if ! $isInstalled;
  fail('Need to write rapidminer execution test');

  skip 'modules not installed', 3 if ! -f '/etc/profile.d/modules.sh';
  `/bin/ls /opt/modulefiles/applications/rapidminer/[0-9]* 2>&1`;
  ok($? == 0, 'rapidminer module installed');
  `/bin/ls /opt/modulefiles/applications/rapidminer/.version.[0-9]* 2>&1`;
  ok($? == 0, 'rapidminer version module installed');
  ok(-l '/opt/modulefiles/applications/rapidminer/.version',
     'rapidminer version module link created');

}
