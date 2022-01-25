## Bonsai CI helper scripts for ruby-runtime based assets

This directory contains helper scripts that can be used to automate Bonsai asset build as part of Sensu ruby plugin release process.

### Bonsai 
The provided Bonsai example configuration file `.bonsai.yml.example` defines Sensu assets for each of the supported ruby-runtime platforms.

#### Build script will:

* builds bonsai assets tarballs
* generate sha512 checksum file
* upload bonsai assets into tagged github release