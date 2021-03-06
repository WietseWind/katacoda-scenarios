#!/bin/bash

apt -y install htop
#mkdir -p ~/.vscode
#echo '{"files.exclude": {".*": true}, "workbench.startupEditor": "none"}' > ~/.vscode/settings.json

#curl -L https://upgrpjt.dlvr.cloud/auto-run-command.1.6.0 | tar xvf -
#mv extension /opt/.katacodacode/extensions/auto-run-command

mkdir -p /opt/.katacodacode/user-data/User/
cat << VSCODEEOF > /opt/.katacodacode/user-data/User/settings.json
{ 
  "workbench.startupEditor": "none", 
  "files.autoSave": "off",
  "editor.minimap.enabled": true,
  "window.autoDetectColorScheme": false,
  "workbench.colorCustomizations": {},
  "workbench.colorTheme": "Default Dark+",
  "editor.semanticHighlighting.enabled": false,
  "editor.tokenColorCustomizations": {
    "semanticHighlighting": true
  },
  "files.exclude": {
    "**/.*": true
  },
  "x-auto-run-command.rules": [
    {"command": "workbench.action.terminal.new"}
  ]
}
VSCODEEOF

echo "This is a background script with a long running process"
sleep 2
echo "done" >> /root/katacoda-finished

sleep 4
echo "done" >> /root/katacoda-background-finished
