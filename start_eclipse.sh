#!/bin/bash

export ECLIPSE_WORKSPACE=${ECLIPSE_WORKSPACE:-~/development/java_workspace}
export ECLIPSE_PLUGINS_DIRECTORY=${ECLIPSE_PLUGINS_DIRECTORY:-~/development/java_workspace}

echo "Eclipse plugins directory: $ECLIPSE_PLUGINS_DIRECTORY"
echo "Eclipse workspace directory: $ECLIPSE_WORKSPACE"

if [ ! -d "$ECLIPSE_WORKSPACE" ]; then
  mkdir -p $ECLIPSE_WORKSPACE
  chmod -R $ECLIPSE_WORKSPACE
fi

if [ ! -d "$ECLIPSE_PLUGINS_DIRECTORY" ]; then
  mkdir -p $ECLIPSE_PLUGINS_DIRECTORY/.eclipse-docker
fi

docker-compose up -d eclipse



