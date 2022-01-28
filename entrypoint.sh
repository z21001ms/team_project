#!/bin/bash

set -e
rm -f /lse_app/tmp/pids/server.pid
exec "$@"