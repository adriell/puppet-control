class profile::nodejs::package{
	class { '::nodejs': 
		repo_url_suffix 		=> '6.9.4',
		manage_package_repo 		=> false,
		nodejs_dev_package_ensure	=> 'present',
		npm_package_ensure		=> 'present'
	}
	package { 'pm2':
  		ensure   => 'present',
  		provider => 'npm',
	}

	file {"/var/www/html/app":
		ensure 		=> directory,
		mode 		=> '0644',
		owner		=> root,
		group		=> root,
	}
	nodejs::npm { 'express with options':
 		ensure          => 'present',
  		package         => 'express',
  		install_options => ['--save-dev', '--no-bin-links'],
  		target          => '/var/www/html/app',
	}
	
}	
