#!/bin/bash

ln -s /github/workspace /workspace

cd /workspace

ls

echo "running $INPUT_LIQUIBASE_CMD"
applyOutput=$(cd /workspace && source creds.sh && /usr/local/bin/entrypoint.sh liquibase $INPUT_LIQUIBASE_CMD 2>&1)
applyExitCode=${?}

# Exit code of 0 indicates success. Print the output and exit.
if [ ${applyExitCode} -eq 0 ]; then
    echo "successfully ran $INPUT_LIQUIBASE_CMD"
else
    echo "error running $INPUT_LIQUIBASE_CMD"
if

echo "${applyOutput}"

exit ${applyExitCode}
