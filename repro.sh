#!/bin/bash

url="api.storeshippers.com"
if [ $# -lt 1 ]; then
  echo "========================================================"
  echo "You can provide a url to test. Usage: ${0} <url>"
  echo 'Using default: ' $url
  echo "========================================================"
  echo
else
  url=$1
fi
# Use an infinite while loop
failure_decryption=0
failure_no_cert=0
total=0
while true; do
  total=$(($total+1))
  #o=$( curl -Iv "$url" 2>&1 )
  o=$( openssl s_client -connect "$url":443 -servername "$url"  -verify_return_error <<< 'Q' 2>&1 )
  if [[ $o == *"decryption failed or bad record mac"* ]] ; then
    failure_decryption=$(($failure_decryption+1))
    echo '#' $total ' FAILED due to decryption failed or bad record mac.'
    echo $o
  elif [[ $o == *"no peer certificate available"* ]] ; then
    failure_no_cert=$(($failure_no_cert+1))
    echo '#' $total ' FAILED due to no peer certificate available.'
    echo $o
  elif [[ $o == *"Certificate chain"* ]] ; then
    echo -n 'S'
  else
    echo '[FATAL] script bug. here is output: '
    echo $o
    echo
    exit
  fi
  if [[ $failure_decryption -gt 5 || $failure_no_cert -gt 5 || $total -gt 1000 ]] ; then
    echo
    echo '===== TEST RESULTS ======='
    echo 'decryption failed or bad record mac: ' $failure_decryption
    echo 'no peer certificate available without detailed error: ' $failure_no_cert
    echo 'Total: ' $total ' Command: openssl s_client -connect ' $url ':443  -verify_return_error <<< "Q" 2>&1'
    echo
    exit
  fi
  # Use sleep to wait for 1 second before repeating the loop
  sleep 1
done
echo