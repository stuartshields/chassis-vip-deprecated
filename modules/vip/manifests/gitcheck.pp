define vip::gitcheck (
	$plugins = $title
)
{
	exec { "${$plugins}-install":
		command => "git clone https://github.com/Automattic/${$plugins}.git /vagrant/content/plugins/${$plugins}",
		path    => '/usr/bin/',
		require => Package[ 'git-core' ],
		onlyif  => "test ! -d /vagrant/content/plugins/${$plugins}",
		timeout => 0
	}

	exec { "${$plugins}-update":
		command => "git --work-tree=/vagrant/content/plugins/${$plugins} --git-dir=/vagrant/content/plugins/${$plugins}/.git pull origin master",
		path    => [ '/usr/bin/', '/bin' ],
		require => [ Package[ 'git-core' ] ],
		onlyif  => "test -d /vagrant/content/plugins/${$plugins}",
		timeout => 0
	}
}
