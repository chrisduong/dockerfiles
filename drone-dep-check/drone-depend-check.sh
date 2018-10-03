#!/bin/sh

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

/usr/share/dependency-check/bin/dependency-check.sh \
    --data ${PLUGIN_DATA_DIRECTORY} \
    --scan ${PLUGIN_SCAN} \
    --format ${PLUGIN_FORMAT} \
    --project ${PLUGIN_PROJECT} \
    --out ${PLUGIN_REPORT}