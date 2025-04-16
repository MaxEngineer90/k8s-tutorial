#!/bin/bash


SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd)"
branch='feature/**'
helmPath="${SCRIPT_DIR}/../../caddy_chart"
namespace='ml-tutorial'
imageTag='2.9.1-alpine'
imageRepository='caddy'
imageRegistry='docker.io'
release='ml-tutorial'

echo "Deploying to cluster using KUBECONFIG=$KUBECONFIG"

helm upgrade "$release" "$helmPath" \
  --values "$helmPath/values.yaml" \
  --install \
  --atomic \
  --set "image.registry=$imageRegistry" \
  --set "image.repository=$imageRepository" \
  --set "image.tag=$imageTag" \
  --set "annotations.deployment\.local/branch-name=$branch" \
  --set "developsrc=feature/**" \
  --namespace "$namespace" \
  --create-namespace