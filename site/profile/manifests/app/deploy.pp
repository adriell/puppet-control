class profile::app::deploy{
        include profile::nodejs::package
        include profile::pm2::install
        vcsrepo { '/var/www/html/production':
                ensure   => present,
                provider => git,
                source   => 'https://gitlab.com/chaordic/chaordicapp.git',
        }

        exec {"startApp":
                command => '/usr/local/bin/pm2 start /var/www/html/production/app.js'
        }
}

