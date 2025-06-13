#!/bin/bash
set -euo pipefail

required_vars=("SECRET_KEY" "DEBUG" "ALLOWED_HOSTS" "CSRF_TRUSTED_ORIGINS" "CORS_ALLOWED_ORIGINS" "API_HOST")

missing_vars=()

for var in "${required_vars[@]}"; do
  if [ -z "${!var:-}" ]; then
    missing_vars+=("$var")
  fi
done

if [ "${#missing_vars[@]}" -ne 0 ]; then
  echo "Fatal error: The following required environment variables are not set:" >&2
  for var in "${missing_vars[@]}"; do
    echo "  - $var" >&2
  done
  exit 1
fi

echo "All required environment variables are set."

exec apache2ctl -D FOREGROUND