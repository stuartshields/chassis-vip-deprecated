$vip_config = sz_load_config()
class { 'vip':
	php => $vip_config[php]
}
class {"vip::plugins": }
class {"vip::php":
	require => Class['vip'],
}
