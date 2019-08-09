#!/bin/bash

echo "Running Google Cloud installation steps..."

brew cask install google-cloud-sdk

# gcloud installation

export CLOUDSDK_CORE_DISABLE_PROMPTS=1

gcloud components update --quiet
gcloud components install beta --quiet
gcloud components install kubectl --quiet
gcloud components install alpha --quiet
gcloud components install docker-credential-gcr --quiet

gcloud auth login
gcloud auth application-default login
gcloud auth configure-docker

gcloud compute project-info add-metadata --metadata google-compute-default-region=australia-southeast1,google-compute-default-zone=australia-southeast1-c

# https://cloud.google.com/container-registry/docs/advanced-authentication
docker-credential-gcr configure-docker
docker-credential-gcr gcr-login

