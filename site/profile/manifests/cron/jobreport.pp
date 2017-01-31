class profile::cront::jobreport{
	include utils
	crontab::daily {'daily-test':
    		hour    => 12,
    		minute  => 0,
    		command => 'sh /opt/jobreport.sh',
	}
}
