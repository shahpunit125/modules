class ntp::service inherits ntp{

service {"ntp":
ensure => running,
}
}
