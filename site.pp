node "test3.com" {
 exec { "patch server":
command => "apt-get update",
path => ["/usr/bin/"],
logoutput => true,
}
exec { "patch upgrade":
command => "apt-get upgrade -Y",
path => ["/usr/bin/"],
logoutput => true,
}
exec { "firewall":
command => "ufw enable -y",
path => ["/usr/sbin"],
logoutput => true,
}
exec {"/sbin/reboot":
 refreshonly => "true",
}
exec { "system uptime":
command => "uptime",
path => ["/usr/bin"],
logoutput => true,
}
}

