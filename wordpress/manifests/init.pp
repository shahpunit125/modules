class wordpress{

$dbname = "wordpress"
$dbuser = "wordpressuser"
$dbpassword = "password"
$dbhost = "localhost"

include wordpress::software
include wordpress::download1
include wordpress::config1
include wordpress::download2
include wordpress::config2
}

