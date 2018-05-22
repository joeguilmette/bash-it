#!/bin/bash

rs() {
	rsync -avz --stats --partial --progress -e 'ssh -p 41035' mynameisjoe@mynameisjoe.cloud.seedboxes.cc:~/files/Plex/*/*"$1"*/* ~/Dropbox/Movies/
}
