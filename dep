#!/bin/bash
# Inserts a secret into the config, but only if the environment variable is made present.
sed -e "s*\${gitpass}*$gitpass*" _config_vars.yml | tee _config.yml
