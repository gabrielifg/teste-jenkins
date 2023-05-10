#!/bin/bash

source ./00-directories.env

mkdir ${MONOREPO_BASE_DIR}
mkdir ${MONOREPO_APPS_DIR}
mkdir ${MONOREPO_DOCS_DIR}
mkdir ${MONOREPO_LIBS_DIR}
mkdir ${MONOREPO_TESTS_DIR}

# Moving APPS repos
mv ${NEW_MONOREPO_DIR}keycloak-microservice-sidecar ${MONOREPO_APPS_DIR}keycloak-microservice-sidecar
mv ${NEW_MONOREPO_DIR}cert-sidecar ${MONOREPO_APPS_DIR}cert-sidecar
mv ${NEW_MONOREPO_DIR}kafka-loopback ${MONOREPO_APPS_DIR}kafka-loopback
mv ${NEW_MONOREPO_DIR}history-proxy ${MONOREPO_APPS_DIR}history-proxy
mv ${NEW_MONOREPO_DIR}influxdb-retriever ${MONOREPO_APPS_DIR}influxdb-retriever
mv ${NEW_MONOREPO_DIR}influxdb-storer ${MONOREPO_APPS_DIR}influxdb-storer
mv ${NEW_MONOREPO_DIR}telegraf ${MONOREPO_APPS_DIR}telegraf
mv ${NEW_MONOREPO_DIR}file-mgmt ${MONOREPO_APPS_DIR}file-mgmt
mv ${NEW_MONOREPO_DIR}kafka-ws ${MONOREPO_APPS_DIR}kafka-ws
mv ${NEW_MONOREPO_DIR}keycloak ${MONOREPO_APPS_DIR}keycloak
mv ${NEW_MONOREPO_DIR}keycloak-proxy ${MONOREPO_APPS_DIR}keycloak-proxy
mv ${NEW_MONOREPO_DIR}device-basic-authentication ${MONOREPO_APPS_DIR}device-basic-authentication
mv ${NEW_MONOREPO_DIR}x509-identity-mgmt ${MONOREPO_APPS_DIR}x509-identity-mgmt
mv ${NEW_MONOREPO_DIR}ejbca ${MONOREPO_APPS_DIR}ejbca
mv ${NEW_MONOREPO_DIR}certificate-acl ${MONOREPO_APPS_DIR}certificate-acl
mv ${NEW_MONOREPO_DIR}http-agent ${MONOREPO_APPS_DIR}http-agent
mv ${NEW_MONOREPO_DIR}kafka2ftp ${MONOREPO_APPS_DIR}kafka2ftp
mv ${NEW_MONOREPO_DIR}vernemq-dojot ${MONOREPO_APPS_DIR}vernemq-dojot
mv ${NEW_MONOREPO_DIR}k2v-bridge ${MONOREPO_APPS_DIR}k2v-bridge
mv ${NEW_MONOREPO_DIR}v2k-bridge ${MONOREPO_APPS_DIR}v2k-bridge
mv ${NEW_MONOREPO_DIR}report-manager ${MONOREPO_APPS_DIR}report-manager
mv ${NEW_MONOREPO_DIR}device-manager-batch ${MONOREPO_APPS_DIR}device-manager-batch

mv ${BITBUCKET_REPOS_DIR}backstage ${MONOREPO_APPS_DIR}backstage
mv ${BITBUCKET_REPOS_DIR}cron ${MONOREPO_APPS_DIR}cron
mv ${BITBUCKET_REPOS_DIR}data-manager ${MONOREPO_APPS_DIR}data-manager
mv ${BITBUCKET_REPOS_DIR}device-manager ${MONOREPO_APPS_DIR}device-manager
mv ${BITBUCKET_REPOS_DIR}flowbroker ${MONOREPO_APPS_DIR}flowbroker
mv ${BITBUCKET_REPOS_DIR}gui-v2 ${MONOREPO_APPS_DIR}gui-v2
mv ${BITBUCKET_REPOS_DIR}kong ${MONOREPO_APPS_DIR}kong

# Moving LIBS repos
mv ${BITBUCKET_REPOS_DIR}dojot-microservice-sdk-js ${MONOREPO_LIBS_DIR}dojot-microservice-sdk-js
mv ${BITBUCKET_REPOS_DIR}vmq-operator ${MONOREPO_LIBS_DIR}vmq-operator

# Moving TESTS repos
mv ${BITBUCKET_REPOS_DIR}tests ${MONOREPO_TESTS_DIR}tests
mv ${NEW_MONOREPO_DIR}locust ${MONOREPO_TESTS_DIR}locust

# Moving DOCS repos
mv ${BITBUCKET_REPOS_DIR}docs/* ${MONOREPO_DOCS_DIR}
mv ${BITBUCKET_REPOS_DIR}dojot-training ${MONOREPO_DOCS_DIR}dojot-training

# Deleting old structuring

rm -rf ${BITBUCKET_REPOS_DIR}
rm -rf ${NEW_MONOREPO_DIR}

#echo mkdir ${MONOREPO_BASE_DIR}
#echo mkdir ${MONOREPO_APPS_DIR}
#echo mkdir ${MONOREPO_DOCS_DIR}
#echo mkdir ${MONOREPO_LIBS_DIR}
#echo mkdir ${MONOREPO_TESTS_DIR}
#
#echo "Moving APPS repos"
#for repo in ${APP_REPOS}
#do
#    #echo "-- Moving APP repo ${repo}"
#    echo mv ${BITBUCKET_REPOS_DIR}${repo} ${MONOREPO_APPS_DIR}${repo}
#    sleep 0.2
#done
#
#echo "Moving LIBS repos"
#for repo in ${LIB_REPOS}
#do
#    #echo "-- Moving LIB repo ${repo}"
#    echo mv ${BITBUCKET_REPOS_DIR}${repo} ${MONOREPO_LIBS_DIR}${repo}
#    sleep 0.2
#done
#
#echo "Moving TESTS repos"
#for repo in ${TEST_REPOS}
#do
#    #echo "-- Moving TEST repo ${repo}"
#    echo mv ${BITBUCKET_REPOS_DIR}${repo} ${MONOREPO_TESTS_DIR}${repo}
#    sleep 0.2
#done
#
#echo "Moving DOCS repos"
#for repo in ${DOC_REPOS}
#do
#    #echo "-- Moving DOC repo ${repo}"
#    echo mv ${BITBUCKET_REPOS_DIR}${repo} ${MONOREPO_DOCS_DIR}${repo}
#    sleep 0.2
#done

