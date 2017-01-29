class profile::nginx::app{
	include profile::nginx::server
	nginx::resource::upstream { 'app':
 		 members => [
    			'localhost:3000',
    			'localhost:3001',
    			'localhost:3002',
  		],
	}

	nginx::resource::server { '192.168.10.10':
  		proxy => 'http://app',
	}
}
