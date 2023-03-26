#!/bin/bash

generate() {
    /tools/Generate.sh /tools/Template.html /watch > output.html
    echo "Generated new file index based on $(ls /watch | wc -l) files"
}

generate

while inotifywait /watch -e create -e delete; do
    generate
done
