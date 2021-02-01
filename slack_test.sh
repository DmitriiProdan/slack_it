#!/usr/bin/env bash

# For Slack webhook. Posts to a chat room
message=$1

generate_post_data(){
 
 cat <<EOF
{"text": "$message"}
EOF
}

send_dat_curl_girl(){
echo "$(generate_post_data)"
curl -X POST https://hooks.slack.com/services/T024VU91V/BB THIS AINT GONNA WORK IF YA DONT CHANGE THIS/fUhJKASDFASFASADFIkyksydRK8vodj \
-H "Content-type: application/json" \
-d  "$(generate_post_data)"
}

send_dat_curl_girl
