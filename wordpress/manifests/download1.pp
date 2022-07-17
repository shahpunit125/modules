class wordpress::download1 inherits wordpress{

#exec {"wget https://gitlab.com/roybhaskar9/devops/raw/master/coding/chef/chefwordpress/files/default/mysqlcommands":
#path => "/usr/bin/",
#cwd => "/tmp/"
#}



#exec {"wget https://wordpress.org/latest.zip":
#path => "/usr/bin/",
#cwd => "/tmp/"
#}

file {"/tmp/mysqlcommands":
ensure => present,
source => "puppet:///modules/wordpress/mysqlcommands",

}

file{"/tmp/latest.zip":
ensure => present,
source => "puppet:///modules/wordpress/latest.zip",
}

exec {"mysql -uroot -prootpassword < /tmp/mysqlcommands":
path => "/usr/bin",
require => File["/tmp/mysqlcommands"],
}
}
