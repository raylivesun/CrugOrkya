#!/usr/bin/env bash

Portable=`set portable`

if [ "$Portable" = "true" ]; then
    echo "This script is portable."
else
    echo "This script is not portable."
exit 1
fi
