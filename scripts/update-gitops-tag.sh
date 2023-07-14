#!/bin/sh

set -ex

echo "Updating $OVERLAY to use $TAG for $IMAGE"

kustomize-tools replace-tag "gitops/${OVERLAY}/kustomization.yaml" --image "$IMAGE" --tag "$TAG"
