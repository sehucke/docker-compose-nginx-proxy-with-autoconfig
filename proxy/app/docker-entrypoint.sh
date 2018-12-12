#!/bin/bash
set -e

# Generate dhparam file if required
# Note: if $DHPARAM_BITS is not defined, generate-dhparam.sh will use 2048 as a default
/app/generate-dhparam.sh $DHPARAM_BITS

exec "$@"
