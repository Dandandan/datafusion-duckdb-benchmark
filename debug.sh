#!/bin/bash
set -e

CREATE=${CREATE:-create-multi-datafusion.sql}
DATAFUSION_CLI=${DATAFUSION_CLI:-datafusion-cli}

cat queries-datafusion.sql | while read query; do
    sync
    echo 3 | sudo tee /proc/sys/vm/drop_caches >/dev/null
    sync

    echo "$query" > /tmp/query.sql
    echo "$query"

    ${DATAFUSION_CLI} -f ${CREATE} /tmp/query.sql
done
