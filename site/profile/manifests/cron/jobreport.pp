class profile::cron::jobreport{
	include utils
	
	exec {"scheduleJob":
                command => '/usr/bin/sh /opt/schedule.sh'
        }
}
