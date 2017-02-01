class vip (
	$php = $vip_config[php],
	$path	= "/vagrant/extensions/vip",
) {
	file { "${$path}/local-config.php":
		content => template('vip/local-config.php.erb'),
		owner   => 'root',
		group   => 'root',
		mode    => 0644,
	}

	file { "/vagrant/content/config":
		ensure => "directory",
		owner   => 'root',
		group   => 'root',
		mode    => 0644,
	}

	file { "/vagrant/content/config/roles.php":
		content => template('vip/roles.php.erb'),
		owner   => 'root',
		group   => 'root',
		mode    => 0644,
	}

	file { "/vagrant/content/config/vip-config.php":
		content => template('vip/vip-config.php.erb'),
		owner   => 'root',
		group   => 'root',
		mode    => 0644,
	}

	file { "/vagrant/content/config/batcache-config.php":
		content => template('vip/batcache-config.php.erb'),
		owner   => 'root',
		group   => 'root',
		mode    => 0644,
	}

	file { "/vagrant/content/config/is-mobile.php":
		content => template('vip/is-mobile.php.erb'),
		owner   => 'root',
		group   => 'root',
		mode    => 0644,
	}

	file { "/vagrant/content/advanced-cache.php":
		content => template('vip/advanced-cache.php.erb'),
		owner   => 'root',
		group   => 'root',
		mode    => 0644,
	}

	file { "/vagrant/content/object-cache.php":
		content => template('vip/object-cache.php.erb'),
		owner   => 'root',
		group   => 'root',
		mode    => 0644,
	}
}
