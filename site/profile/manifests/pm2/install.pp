class profile::pm2::install{
	include profile::nodejs::package
	package { 'pm2':
                ensure   => 'present',
                provider => 'npm',
        }

}
