class profile::pm2::deploy{

class { 'pm2':
   npm_repository    => "https://gitlab.com/chaordic/chaordicapp.git",
   pm2_version       => "latest",
   install_root      => '/var/www/html',
   install_dir       => 'app',
   max_restarts      => 10,
   min_uptime        => 3500,
   deamon_user       => 'root',  
 }
}
