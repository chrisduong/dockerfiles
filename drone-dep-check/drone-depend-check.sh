#!/bin/sh

/usr/share/dependency-check/bin/dependency-check.sh \
    --scan ${PLUGIN_SCAN} \
    --format ${PLUGIN_FORMAT} \
    --project ${PLUGIN_PROJECT} \
    --out ${PLUGIN_REPORT}
