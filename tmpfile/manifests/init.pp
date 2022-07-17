class tmpfile {
file {"/tmp/file1":
ensure => present,
content => "Hello World",
}
}

