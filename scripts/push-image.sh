#!/bin/bash

if [ -z "$CONTAINER_REGISTRY" ]; then
  echo "Error: CONTAINER_REGISTRY is not set."
  exit 1
fi


if [ -z "$VERSION" ]; then
  echo "Error: VERSION is not set."
  exit 1
fi

if [ -z "$REGISTRY_UN" ]; then
  echo "Error: REGISTRY_UN is not set."
  exit 1
fi


if [ -z "$REGISTRY_PW" ]; then
  echo "Error: REGISTRY_UN is not set."
  exit 1
fi


echo $REGISTRY_PW | docker login $CONTAINER_REGISTRY --username $REGISTRY_UN --password-stdin
docker push $CONTAINER_REGISTRY/book_catalog:$VERSION
docker push $CONTAINER_REGISTRY/inventory_management:$VERSION