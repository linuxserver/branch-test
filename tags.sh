#!/bin/bash

DOCKER_BUILD_ARGS+=( --build-arg SONARR_BRANCH=${SONARR_BRANCH})

if [[ ! - z && $SONARR_BUILD  == *[0-9]* ]]; then
DOCKER_BUILD_ARGS+=( --build-arg SONARR_BUILD=${SONARR_BUILD} )
fi

SONARR_HUB_TAG=${SONARR_BUILD+-$SONARR_BUILD}
echo "DOCKERHUB_TAG=${SONARR_BRANCH}${SONARR_HUB_TAG}" >> hub_tag_file
echo "BUILD_ARGUMENTS=${DOCKER_BUILD_ARGS[*]}" >> hub_tag_file
