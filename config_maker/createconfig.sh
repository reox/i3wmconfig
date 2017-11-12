#!/bin/bash

H=$(hostname)

OUT="config.tmp"

echo "" > "$OUT"

echo "Create config for Host \"$H\""

for file in common/*; do
    echo -e "\treading $file"
    echo "# --- Content of $file ---" >> "$OUT"
    cat "$file" >> "$OUT"
done

if [ -d "host_$H" ]; then
    echo "Host specific config found..."
    for file in "host_$H"/*; do
        echo -e "\treading $file"
        echo "# --- Content of $file ---" >> "$OUT"
        cat "$file" >> "$OUT"
    done
else
    echo "No Host specific config found!" 1>&2
fi
