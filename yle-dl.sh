#!/bin/bash

~/.local/bin/yle-dl \
 --output-template '${title}.mkv' \
 --no-overwrite \
 --destdir ~/Videos \
 ${1}
