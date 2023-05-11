#!/bin/bash

source ./00-directories.env

mkdir ${BITBUCKET_REPOS_DIR}
git clone https://github.com/gabrielifg/edge-cluster-ansible.git --quiet ${BITBUCKET_REPOS_DIR}edge-cluster-ansible
rm -rf ${BITBUCKET_REPOS_DIR}edge-cluster-ansible/.git
