#!/bin/bash
# Start adddocument API

####Kill all adddocument API###
#Note: awk '{print $2}' will work in Ubuntu and awk '{print $1}' will work in Alpine.
#for process in `ps aux | grep -i gateway-1.0.0 | grep -v grep | grep -v restartservice | awk '{print $2}'`; do
for process in `ps aux | grep -i gateway-1.0.0 | grep -v grep | grep -v restartservice | awk '{print $1}'`; do
	kill -9 $process
done

###start adddocument API ####
cd /Newgen
java -jar LIC_DocumentService.jar &
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start adddocument API: $status"
  exit $status
else echo "adddocument API Starting"
fi

###To keep the container running ####
touch /tmp/run.log
tail -f /tmp/run.log
