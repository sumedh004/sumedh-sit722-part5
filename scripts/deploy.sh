#!/bin/bash



if [ -z "$VERSION" ]; then
  echo "Error: VERSION is not set."
  exit 1
fi

envsubst < ./scripts/kubernetes/deployment.yaml | kubectl apply -f -