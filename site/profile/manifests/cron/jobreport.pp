class profile::cron::jobreport{
	include utils
	
	exec {"scheduleJob":
                command => '/bin/sh /opt/schedule.sh'
        }
}
