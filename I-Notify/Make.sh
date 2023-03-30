#!/bin/bash

generate() {
    /tools/Generate.sh /tools/Template.html /watch > output.html
    echo "Generated new file index based on $(ls /watch | wc -l) files"
}

generate

inotifywait /watch -e create -e delete -mq --format '%:e %f' |
    while read -r MESSAGE; do
        echo $MESSAGE
        [[ $MESSAGE == *.md ]] && generate
    done
