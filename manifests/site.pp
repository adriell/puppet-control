node "default"{

	include role::reverseproxy
	include role::nodejs
	include role::pm2
	include role::app
	include role::scheduling

}
