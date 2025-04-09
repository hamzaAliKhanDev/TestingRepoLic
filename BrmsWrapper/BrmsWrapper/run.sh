#!/bin/bash
# Start the adddocument API
cd /Newgen
java -jar LIC_BrmsWrapper.jar &
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to start adddocument API: $status"
  exit $status
else echo "adddocument API Gateway Starting"
fi

###To keep the container running ####
touch /tmp/run.log
tail -f /tmp/run.log
