#!/usr/bin/env bash

# Setup 

# The output from the command in the run_command function will be sent to Slack
# Update the curl command on line 19 with proxy and add the correct Slack webhook after 'POST' on this line. Fire with Cron.

run_command(){
# cd /opt/app -- Use this line on the VM we are using
./test_api.py | grep 'context\|SchedulingDisabled\|refused' 2>&1
}

# For Slack webhook. Posts to a chat room
send_dat_curl_girl(){
    our_message=$1
    slack_message="{\"text\": \"*ALERT:*\n $our_message\"}"

    echo "slack message is $slack_message"

    curl --proxy 69.252.103.42:3128 -X POST https://hooks.slack.com/services/<CHANGE THIS BEFORE USING> \
    -H "Content-type: application/json" \
    -d  "$slack_message"
}

kube_monitor_output="$(run_command)"

 if NOT NULL then
 if [ -n "$kube_monitor_output" ]
 then
    send_dat_curl_girl "$kube_monitor_output"
 else
    :
 fi
