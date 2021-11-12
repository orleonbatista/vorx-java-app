#!/bin/bash
echo "********************"
echo "** Pushing image ***"
echo "********************"
IMAGE="maven-project"
echo "** Logging in ***"
docker login -u orleon -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG orleon/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push orleon/$IMAGE:$BUILD_TAG
