class wordpress::software inherits wordpress{

$packagenames = ['mysql-server', 'mysql-client', 'php', 'libapache2-mod-php', 'php-mysql', 'apache2', 'unzip']


exec {"apt update":
path => "/usr/bin/",
}

$packagenames.each |String $package| {
package {"${package}":
ensure => present,
require => Exec['apt update'],
}
}
service {"apache2":
ensure => running,
}
}

