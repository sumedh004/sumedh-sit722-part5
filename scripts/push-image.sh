#!/bin/bash

if [ -z "$CONTAINER_REGISTRY" ]; then
  echo "Error: CONTAINER_REGISTRY is not set."
  exit 1
fi


if [ -z "$VERSION" ]; then
  echo "Error: VERSION is not set."
  exit 1
fi

docker push $CONTAINER_REGISTRY/book_catalog:$VERSION
docker push $CONTAINER_REGISTRY/inventory_management:$VERSION