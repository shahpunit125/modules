class wordpress::config2 inherits wordpress{

exec {"chmod -R 775 /var/www/html/wordpress":
path => "/bin/",
}

exec {"chown -R www-data:www-data /var/www/html/wordpress":
path => "/bin/",
}

exec {"systemctl restart apache2 ":
path => "/bin/",
}
}
