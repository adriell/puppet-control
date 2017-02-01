class profile::nginx::server {
	

	include nginx
	package{"nginx-extras":
		ensure => present,
	}
	
	$nginx_app_name = "app"
        $nginx_server_name = "localhost"
        nginx::server{"$nginx_app_name":
                app_name => $nginx_app_name,
                server_name => $nginx_server_name
        }

}

