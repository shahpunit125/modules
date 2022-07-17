class ntp::package inherits ntp{

package {"ntp":
ensure => present,
}
}
