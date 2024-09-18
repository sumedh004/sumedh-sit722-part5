#!/bin/bash


if [ -z "$VERSION" ]; then
  echo "Error: VERSION is not set."
  exit 1
fi

docker push ${{ env.CONTAINER_REGISTRY }}.azurecr.io/book_catalog:$VERSION
docker push ${{ env.CONTAINER_REGISTRY }}.azurecr.io/inventory_management:$VERSION