class wordpress::config1 inherits wordpress{

exec {"mysqladmin -u root password rootpassword":
path => "/usr/bin/",
}


file{"remove_configuration":
path => "/var/www/html/wordpress/wp-config-sample.php",
ensure => absent,
}

}
