class role::reverseproxy {
	include profile::nginx::server
	include profile::nginx::app
}
