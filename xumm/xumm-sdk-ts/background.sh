#!/bin/bash

#mkdir -p ~/.vscode
#echo '{"files.exclude": {".*": true}, "workbench.startupEditor": "none"}' > ~/.vscode/settings.json

#apt install bsdtar -y
#curl -L https://marketplace.visualstudio.com/_apis/public/gallery/publishers/ms-python/vsextensions/python/2020.5.86806/vspackage | bsdtar -xvf - extension
#mv extension /opt/.katacodacode/extensions/mspython

mkdir -p /opt/.katacodacode/user-data/User/
cat << VSCODEEOF > /opt/.katacodacode/user-data/User/settings.json
{ 
  "workbench.startupEditor": "none", 
  "files.autoSave": "off",
  "editor.minimap.enabled": false,
  "window.autoDetectColorScheme": false,
  "workbench.colorCustomizations": {},
  "workbench.colorTheme": "Default Dark+",
  "editor.semanticHighlighting.enabled": false,
  "editor.tokenColorCustomizations": {
    "semanticHighlighting": true
  },
  "files.exclude": {
    "**/.*": true
  }
}
VSCODEEOF

echo "This is a background script with a long running process"
sleep 2
echo "done" >> /opt/.backgroundfinished