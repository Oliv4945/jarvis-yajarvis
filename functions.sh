#!/bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
# To avoid conflicts, name your function like this
# pg_XX_myfunction () { }
# pg for PluGin
# XX is a short code for your plugin, ex: ww for Weather Wunderground
# You can use translations provided in the language folders functions.sh


pg_yajarvis_request() {
  result_curl=$(curl -s -G "$pg_yajarvis_server_url" --data-urlencode "query=$pg_yajarvis_stt")
  $verbose && jv_debug "DEBUG: $result_curl"
  echo "$result_curl"
}

