# SDSC "rapidminer" roll

## Overview

This roll bundles the rapidminer data mining tool.

For more information about RapidMiner please visit the official web page:

- <a href="http://sourceforge.net/projects/rapidminer/" target="_blank">RapidMiner</a> is  a mature and complete data mining solution enabling analysts to find underlying patterns in large volumes of data and making use of those.


## Requirements

To build/install this roll you must have root access to a Rocks development
machine (e.g., a frontend or development appliance).

If your Rocks development machine does *not* have Internet access you must
download the appropriate rapidminer source file(s) using a machine that does
have Internet access and copy them into the `src/<package>` directories on your
Rocks development machine.


## Dependencies

None.


## Building

To build the rapidminer-roll, execute these instructions on a Rocks development
machine (e.g., a frontend or development appliance):

```shell
% make default 2>&1 | tee build.log
% grep "RPM build error" build.log
```

If nothing is returned from the grep command then the roll should have been
created as... `rapidminer-*.iso`. If you built the roll on a Rocks frontend then
proceed to the installation step. If you built the roll on a Rocks development
appliance you need to copy the roll to your Rocks frontend before continuing
with installation.


## Installation

To install, execute these instructions on a Rocks frontend:

```shell
% rocks add roll *.iso
% rocks enable roll rapidminer
% cd /export/rocks/install
% rocks create distro
% rocks run roll rapidminer | bash
```

In addition to the software itself, the roll installs rapidminer environment
module files in:

```shell
/opt/modulefiles/applications/rapidminer
```


## Testing

The rapidminer-roll includes a test script which can be run to verify proper
installation of the rapidminer-roll documentation, binaries and module files. To
run the test scripts execute the following command(s):

```shell
% /root/rolltests/rapidminer.t 
```
