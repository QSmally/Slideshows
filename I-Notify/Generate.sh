#!/bin/bash

#
# © 2023 Joey Smalen ("Smally", "QSmally")
#
# Command usage:
#   Generate.sh <template> <target>
#
# <template>: template file with a <!--TEMPLATE-SLIDES--> string which will be
#   replcaed with references to the Markdown slides;
# <target>: a directory target of the slides to generate the index from.
#

if [ $# -ne 2 ]; then
    echo "error: amount of arguments must be exactly 2, was given $#"
    exit 1
fi

TEMPLATE_SLIDES=$(ls -1 "$2" | \
    sort | \
    sed 's/\(.*\)/<section data-markdown="\/Slides\/\1" data-separator-vertical="^\\r?\\n\\r?\\n" data-separator-notes="^Note:"><\/section>/')

while read LINE; do
    echo $LINE | grep -q "<!--TEMPLATE-CONTENT-->"
    if [ $? -eq 0 ]
        then printf "%s\n" "${TEMPLATE_SLIDES[@]}"
        else echo $LINE
    fi
done < $1
