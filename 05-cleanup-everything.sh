#!/bin/bash

source ./00-directories.env

rm -rf ${BITBUCKET_REPOS_DIR}
rm -rf ${NEW_MONOREPO_DIR}
rm -rf ${MONOREPO_BASE_DIR}
# rm -rf ${GENERATED_DOCS_DIR}


#for repo in ${DEV_REPOS}
#do
#  echo "Removing original repository ${repo}"
#  rm -rf ${repo}
#  sleep 0.1
#done
#
#for repo in ${MONOREPO_SERVICES}
#do
#  echo "Removing monorepo service ${repo}"
#  rm -rf ${repo}
#  sleep 0.1
#done
#
#echo "Removing new monorepo root '${NEW_MONOREPO}'"
#rm -rf ${NEW_MONOREPO}

