class profile::app::deploy{
	include profile::nodejs::package
	include profile::pm2::install
	class{'vcsrepo':}
	vcsrepo { '/var/www/html':
 		ensure   => present,
  		provider => git,
		source   => 'https://gitlab.com/chaordic/chaordicapp.git',
	}
	exec {"startApp":
		path   	=> '/usr/bin:/usr/sbin:/bin',
	  	onlyif 	=> 'test -f /var/www/html/chaordicapp/app.js',
		command => 'pm2 start /var/www/html/chaordicapp/app.js'
	}
}
