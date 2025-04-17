#!/bin/bash

# Force npm environment
export npm_config_engine_strict=false
export YARN_ENABLE=0
export PNPM_HOME="/tmp/pnpm-fake"

# Debug info
echo "Using npm explicitly..."
npm --version

# Force clean install with npm
rm -rf node_modules
npm cache clean --force
npm install
npm run build
