class vip (
	$php = $vip_config[php],
	$path	= "/vagrant/extensions/vip",
) {
  if ! ( File['/vagrant/content22'] ) {
    file { "/vagrant/content22":
      ensure => "directory",
    }
  }
	file { "${$path}/local-config.php":
		content => template('vip/local-config.php.erb'),
		owner   => 'root',
		group   => 'root',
		mode    => 0644,
	}

	file { "/vagrant/content/config.yaml":
		content => template('vip/config.yaml.erb'),
		owner   => 'root',
		group   => 'root',
		mode    => 0644,
	}

	if ! ( File["${$path}/config"] ) {
		file { "${$path}/config":
			ensure => "directory",
			owner   => 'root',
			group   => 'root',
			mode    => 0644,
		}
	}

	file { "${$path}/config/roles.php":
		content => template('vip/roles.php.erb'),
		owner   => 'root',
		group   => 'root',
		mode    => 0644,
	}

	file { "${$path}/config/vip-config.php":
		content => template('vip/vip-config.php.erb'),
		owner   => 'root',
		group   => 'root',
		mode    => 0644,
	}
}
