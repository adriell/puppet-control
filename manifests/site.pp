node "chaordicapp.lab"{

	include role::reverseproxy
	include role::nodejs
	include role::deploy

}
