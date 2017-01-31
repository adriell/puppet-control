class profile::cron::jobreport{
	include utils
	
	exec {"scheduleJob":
                command => '(/usr/bin/crontab -l; echo "00 12 * * * sh /opt/jobreport.sh") | crontab - '
        }
}
