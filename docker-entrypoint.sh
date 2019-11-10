#!/bin/bash
###################################################################################
# Docker entrypoint file for Subsonic media player - see http://subsonic.org.
#
# Author: Markus Duering
###################################################################################

set -e

# Here a view possible commands to start the docker container
# Before it is possible to access the folder on Windows it is necessary to grant access in the Docker desktop settings
# docker run -it -p 4040:4040 -v //c/Users/markus/Documents/GitHub/subsonic/var/subsonic:/usr/var/subsonic -v //c/Users/markus/Documents/GitHub/subsonic/music:/srv/dev-disk-by-label-SWRaid01/MUSIK subsonictest01 subsonic
# docker run -it -p 4040:4040 -v //c/Users/markus/Documents/GitHub/subsonic/var/subsonic:/usr/var/subsonic -v //c/Users/markus/Documents/GitHub/subsonic/music:/srv/dev-disk-by-label-SWRaid01/MUSIK subsonictest01 bash


if [ "$1" = 'subsonic' ]; then
    #exec gosu subsonic "$@"

    echo "Lets start subsonic now"

    # start the subsonic media server
    /usr/local/subsonic/subsonic.sh

    echo "Subsonic should be started now"

    #stayin' alive... - has to be checked if there is a better way to keep the container alive
    sleep infinity

fi

exec $@








