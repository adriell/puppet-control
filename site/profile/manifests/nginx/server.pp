class profile::nginx::server {
	include nginx
	$nginx_app_name = hiera('profile::nginx::server::app_name')
        $nginx_server_name = hiera('profile::nginx::server::server_name')
        nginx::server{"$nginx_app_name":
                app_name => $nginx_app_name,
                server_name => $nginx_server_name
        }

}

