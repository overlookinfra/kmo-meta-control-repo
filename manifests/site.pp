## site.pp ##

# This file (./manifests/site.pp) is the main entry point
# used when an agent connects to a master and asks for an updated configuration.
# https://puppet.com/docs/puppet/latest/dirs_manifest.html
#
# Global objects like filebuckets and resource defaults should go in this file,
# as should the default node definition if you want to use it.

## Active Configurations ##
File { backup => false }

## Node Definitions ##

node default {
  if $trusted['extensions']['pp_role'] {
      include "role::${trusted['extensions']['pp_role']}"
  }
}
