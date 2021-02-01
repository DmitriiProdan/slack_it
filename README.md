# Slack it! - Slack Alert Any Command Output 

I use this to report on anything I need to watch at the command line manually by instead firing with Cronjob and watching for output sent to Slack. 

Great for one off things that need to be watched or being proactive about something that will be monitored more in depth later.

#### Need A Few Examples? 

* Curl a api or website and parse out failure messages to alert on 
* Parse a specific error on a target machine to alert on

### Setup 
1. Update the run_command function with the command you need to grab output from. 

2. Make sure you use **grep** or **cut** to grab just the piece of output you need to send to Slack

4. Update the curl command on line 19 with your proxy and add the correct Slack webhook. 

4. Fire with Cron to automate
