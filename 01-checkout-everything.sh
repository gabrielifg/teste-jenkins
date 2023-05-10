#!/bin/bash

source ./00-directories.env

mkdir ${BITBUCKET_REPOS_DIR}

git clone ssh://git@bitbucket.cpqd.com.br:7999/dojot/backstage.git --quiet ${BITBUCKET_REPOS_DIR}backstage
git -C ${BITBUCKET_REPOS_DIR}backstage checkout 1.0.1 --quiet
rm -rf ${BITBUCKET_REPOS_DIR}backstage/.git

git clone ssh://git@bitbucket.cpqd.com.br:7999/dojot/cron.git --quiet ${BITBUCKET_REPOS_DIR}cron
git -C ${BITBUCKET_REPOS_DIR}cron checkout 1.0.1 --quiet
rm -rf ${BITBUCKET_REPOS_DIR}cron/.git

git clone ssh://git@bitbucket.cpqd.com.br:7999/dojot/data-manager.git --quiet ${BITBUCKET_REPOS_DIR}data-manager
git -C ${BITBUCKET_REPOS_DIR}data-manager checkout 1.0.1 --quiet
rm -rf ${BITBUCKET_REPOS_DIR}data-manager/.git

git clone ssh://git@bitbucket.cpqd.com.br:7999/dojot/device-manager.git --quiet ${BITBUCKET_REPOS_DIR}device-manager
git -C ${BITBUCKET_REPOS_DIR}device-manager checkout 1.0.1 --quiet
rm -rf ${BITBUCKET_REPOS_DIR}device-manager/.git

git clone ssh://git@bitbucket.cpqd.com.br:7999/dojot/flowbroker.git --quiet ${BITBUCKET_REPOS_DIR}flowbroker
git -C ${BITBUCKET_REPOS_DIR}flowbroker checkout 1.0.1 --quiet
rm -rf ${BITBUCKET_REPOS_DIR}flowbroker/.git

git clone ssh://git@bitbucket.cpqd.com.br:7999/dojot/gui-v2.git --quiet ${BITBUCKET_REPOS_DIR}gui-v2
git -C ${BITBUCKET_REPOS_DIR}gui-v2 checkout 1.0.1 --quiet
rm -rf ${BITBUCKET_REPOS_DIR}gui-v2/.git

git clone ssh://git@bitbucket.cpqd.com.br:7999/dojot/kong.git --quiet ${BITBUCKET_REPOS_DIR}kong
git -C ${BITBUCKET_REPOS_DIR}kong checkout 1.0.1 --quiet
rm -rf ${BITBUCKET_REPOS_DIR}kong/.git

git clone ssh://git@bitbucket.cpqd.com.br:7999/dojot/dojot.git --quiet ${BITBUCKET_REPOS_DIR}dojot
git -C ${BITBUCKET_REPOS_DIR}dojot checkout 1.0.1 --quiet
rm -rf ${BITBUCKET_REPOS_DIR}dojot/.git

git clone ssh://git@bitbucket.cpqd.com.br:7999/dojot/docs.git --quiet ${BITBUCKET_REPOS_DIR}docs
git -C ${BITBUCKET_REPOS_DIR}docs checkout 1.0.1 --quiet
rm -rf ${BITBUCKET_REPOS_DIR}docs/.git

git clone ssh://git@bitbucket.cpqd.com.br:7999/dojot/dojot-training.git --quiet ${BITBUCKET_REPOS_DIR}dojot-training
git -C ${BITBUCKET_REPOS_DIR}dojot-training checkout 1.0.1 --quiet
rm -rf ${BITBUCKET_REPOS_DIR}dojot-training/.git

git clone ssh://git@bitbucket.cpqd.com.br:7999/dojot/dojot-microservice-sdk-js.git --quiet ${BITBUCKET_REPOS_DIR}dojot-microservice-sdk-js
git -C ${BITBUCKET_REPOS_DIR}dojot-microservice-sdk-js checkout 1.0.1 --quiet
rm -rf ${BITBUCKET_REPOS_DIR}dojot-microservice-sdk-js/.git

git clone ssh://git@bitbucket.cpqd.com.br:7999/dojot/vmq-operator.git --quiet ${BITBUCKET_REPOS_DIR}vmq-operator
git -C ${BITBUCKET_REPOS_DIR}vmq-operator checkout 1.0.1 --quiet
rm -rf ${BITBUCKET_REPOS_DIR}vmq-operator/.git

git clone ssh://git@bitbucket.cpqd.com.br:7999/dojot/tests.git --quiet ${BITBUCKET_REPOS_DIR}tests
git -C ${BITBUCKET_REPOS_DIR}tests checkout 1.0.1 --quiet
rm -rf ${BITBUCKET_REPOS_DIR}tests/.git


#for repo in ${APP_REPOS} ${CURRENT_MONOREPO} ${DOC_REPOS} ${LIB_REPOS} ${TEST_REPOS}
#do
#  repo_dir="${BITBUCKET_REPOS_DIR}${repo}"
#  repo_url="ssh://git@bitbucket.cpqd.com.br:7999/dojot/${repo}.git"
#  git clone ${repo_url} --quiet ${repo_dir}
#
#  git -C ${repo_dir} checkout ${checkout_version} --quiet
#
#  rm -rf ${repo_dir}/.git
#
#  sleep 0.2
#done
