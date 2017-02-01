class profile::app::deploy{
        include profile::nodejs::package
        include profile::pm2::install
}

