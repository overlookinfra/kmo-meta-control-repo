# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include role::cmsweb
class role::cmsweb {
  notify { "Hello! my role is: ${trusted['extensions']['pp_role']} \
  and I've been running for ${facts['uptime']}": }
}