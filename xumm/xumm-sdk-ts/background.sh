#!/bin/bash

mkdir -p ~/.vscode
echo '{"files.exclude": {".*": true}, "workbench.startupEditor": "none"}' > ~/.vscode/settings.json

echo "This is a background script with a long running process"
sleep 2
echo "done" >> /opt/.backgroundfinished