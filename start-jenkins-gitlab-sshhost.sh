#!/bin/bash
set -x
JENKINS_HOME=jenkins_home
GITLAB_DIR=$HOME/gitlab

if [ ! -d "$JENKINS_HOME" ]; then
    echo "Creating Dicrectory $JENKINS_HOME"
    mkdir $JENKINS_HOME
fi

if [ ! -d "$GITLAB_DIR" ]; then
    echo "Creating Dicrectory $GITLAB_DIR"
    mkdir $GITLAB_DIR
fi

export GITLAB_HOME=$GITLAB_DIR
docker-compose up -d
