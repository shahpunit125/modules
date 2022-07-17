class wordpress::download2 inherits wordpress{

#exec {"wget https://gitlab.com/roybhaskar9/devops/raw/master/coding/chef/chefwordpress/files/default/wp-config-sample.php":
#path => "/usr/bin/",
#cwd => "/var/www/html/wordpress/",
#}


exec {"sudo unzip /tmp/latest.zip -d /var/www/html":
path => "/usr/bin/",
before => File["download wp-config"],
}

file{"download wp-config":
path => "/var/www/html/wordpress/wp-config.php",
ensure => present,
#source => "puppet:///modules/wordpress/wp-config-sample.php",
content => template('wordpress/wp-config-sample.erb'),
require => File["remove_configuration"]
}
}
