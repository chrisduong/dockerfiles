#!/bin/bash

echo "Running with: ..."
echo "PLUGIN_DATA_DIRECTORY: ${PLUGIN_DATA_DIRECTORY}"
echo "PLUGIN_SCAN: ${PLUGIN_SCAN}"
echo "PLUGIN_PROJECT: ${PLUGIN_PROJECT}"
echo "PLUGIN_REPORT: ${PLUGIN_REPORT}"

if [ ! -w "$PLUGIN_REPORT" ]; then
   echo "Cannot write to Report folder!"
   echo "You need to mount the report folder for sure"
   exit 2
fi

# Get scan patterns
IFS=","
for v in $PLUGIN_SCAN
do
   scanOpts+=(--scan $v)
done

PARMS=(--data ${PLUGIN_DATA_DIRECTORY})
PARMS+=("${scanOpts[@]}")
PARMS+=(--format ${PLUGIN_FORMAT})
PARMS+=(--project ${PLUGIN_PROJECT})
PARMS+=(--out ${PLUGIN_REPORT})

/usr/share/dependency-check/bin/dependency-check.sh "${PARMS[@]}"
