#!/bin/bash
set -e

cd /usr/share/webapps/mattermost

if [[ "$USER" = "mattermost" ]];
  exec bin/platform "$@"
else
  exec sudo -u mattermost bin/platform "$@"
fi
