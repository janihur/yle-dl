#!/bin/bash

declare -r URL="$1"; shift
declare -r EPISODES_FILE=$(mktemp)

trap "rm -f $EPISODES_FILE" 0 2 3 15

# 1/2 collect episode links
> ${EPISODES_FILE} ~/.local/bin/yle-dl \
 --showepisodepage \
 ${URL}

# 2/2 download all episodes
~/.local/bin/yle-dl \
 --output-template '${series}-${episode}.mkv' \
 --no-overwrite \
 --destdir ~/Videos \
 -i ${EPISODES_FILE}
