node "chaordicapp.lab"{

	include role::reverseproxy
	include role::nodejs
	include role::pm2
	include role::app
	include role::scheduling

}
