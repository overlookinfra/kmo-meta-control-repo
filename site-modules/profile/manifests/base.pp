# site-modules/profile/manifests/base.pp
# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include profile::base
# profile/manifests/base.pp
# profile/manifests/base.pp
class profile::base ($login_message){
  class {'motd':content => $login_message,}
}
