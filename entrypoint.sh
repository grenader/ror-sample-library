#!/bin/bash
set -e

set -o allexport
source .env
VAULT_FILE=/vault/secrets/vault-env.sh
if test -f "$VAULT_FILE"; then
  source $VAULT_FILE
fi
set +o allexport

# Remove a potentially pre-existing server.pid for Rails.
rm -f /myapp/tmp/pids/server.pid

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"

