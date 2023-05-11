#!/bin/bash

source ./00-directories.env

mkdir ${MONOREPO_APPS_DIR}


mv ${BITBUCKET_REPOS_DIR}edge-cluster-ansible ${MONOREPO_APPS_DIR}edge-cluster-ansible


rm -rf ${BITBUCKET_REPOS_DIR}
rm -rf ${NEW_MONOREPO_DIR}

