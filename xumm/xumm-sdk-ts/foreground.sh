#!/bin/bash

exec > /dev/null 2>&1

echo "This is automatically run when the scenario"

# pwd
# ls -lha

echo "Waiting to complete background script"
while [ ! -f /opt/.backgroundfinished ];
  do sleep 1;
done;

echo "Done"