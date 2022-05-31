#!/bin/bash

export MERFISH_OUTPUT='Z:/merfish_output'
export MERFISH_RAW_DATA='Z:/merfish_raw_data'
export MERFISH_ANALYSIS='Z:/merfish_analysis'

export OUTPUT_COPY='Y:/merfish_output'
export RAW_DATA_COPY='Y:/merfish_raw_data'
export ANALYSIS_COPY='Y:/merfish_analysis'

# Checking for files in MERFISH_OUTPUT not in OUTPUT_COPY
diff $MERFISH_OUTPUT $OUTPUT_COPY > diff.txt


awk "{if(/Only in $MERFISH_OUTPUT:/) print \$2}" < diff.txt > files_to_copy.txt

while read file; do
  echo "$files"
done <files_to_copy.txt