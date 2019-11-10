#!/bin/bash
###################################################################################
# Docker entrypoint file for Subsonic media player - see http://subsonic.org.
#
# Author: Markus Duering
###################################################################################

set -e

#if [ "$1" = 'subsonic' ]; then
#    exec gosu subsonic "$@"
#fi

echo "Lets start subsonic now"

#/var/subsonic/subsonic.sh is normall called - see docker file - with exec it does not work - currently not clear why not - has to be checked
$@

echo "Subsonic should be started now"

#stayin' alive... - has to be checked if there is a better way to keep the container alive
sleep infinity






