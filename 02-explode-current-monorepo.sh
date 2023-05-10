#!/bin/bash

source ./00-directories.env

mkdir ${NEW_MONOREPO_DIR}

mv ${LEGACY_MONOREPO_DIR}tools/keycloak-microservice-sidecar ${NEW_MONOREPO_DIR}keycloak-microservice-sidecar
mv ${LEGACY_MONOREPO_DIR}tools/cert-sidecar ${NEW_MONOREPO_DIR}cert-sidecar
mv ${LEGACY_MONOREPO_DIR}tools/kafka/loopback ${NEW_MONOREPO_DIR}kafka-loopback
mv ${LEGACY_MONOREPO_DIR}compatibility/history-proxy ${NEW_MONOREPO_DIR}history-proxy
mv ${LEGACY_MONOREPO_DIR}storage/time-series/influxdb/retriever ${NEW_MONOREPO_DIR}influxdb-retriever
mv ${LEGACY_MONOREPO_DIR}storage/time-series/influxdb/storer ${NEW_MONOREPO_DIR}influxdb-storer
mv ${LEGACY_MONOREPO_DIR}storage/time-series/influxdb/telegraf ${NEW_MONOREPO_DIR}telegraf
mv ${LEGACY_MONOREPO_DIR}storage/file/minio/file-mgmt ${NEW_MONOREPO_DIR}file-mgmt
mv ${LEGACY_MONOREPO_DIR}subscription-engine/kafka-ws ${NEW_MONOREPO_DIR}kafka-ws
mv ${LEGACY_MONOREPO_DIR}iam/keycloak ${NEW_MONOREPO_DIR}keycloak
mv ${LEGACY_MONOREPO_DIR}iam/keycloak-proxy ${NEW_MONOREPO_DIR}keycloak-proxy
mv ${LEGACY_MONOREPO_DIR}iam/device-basic-authentication ${NEW_MONOREPO_DIR}device-basic-authentication
mv ${LEGACY_MONOREPO_DIR}iam/x509-identity-mgmt ${NEW_MONOREPO_DIR}x509-identity-mgmt
mv ${LEGACY_MONOREPO_DIR}iam/ejbca ${NEW_MONOREPO_DIR}ejbca
mv ${LEGACY_MONOREPO_DIR}iam/certificate-acl ${NEW_MONOREPO_DIR}certificate-acl
mv ${LEGACY_MONOREPO_DIR}connector/http-agent ${NEW_MONOREPO_DIR}http-agent
mv ${LEGACY_MONOREPO_DIR}connector/kafka2ftp ${NEW_MONOREPO_DIR}kafka2ftp
mv ${LEGACY_MONOREPO_DIR}connector/mqtt/locust ${NEW_MONOREPO_DIR}locust
mv ${LEGACY_MONOREPO_DIR}connector/mqtt/vernemq/broker ${NEW_MONOREPO_DIR}vernemq-dojot
mv ${LEGACY_MONOREPO_DIR}connector/mqtt/vernemq/k2v-bridge ${NEW_MONOREPO_DIR}k2v-bridge
mv ${LEGACY_MONOREPO_DIR}connector/mqtt/vernemq/v2k-bridge ${NEW_MONOREPO_DIR}v2k-bridge
mv ${LEGACY_MONOREPO_DIR}data-visualization/reports/report-manager ${NEW_MONOREPO_DIR}report-manager
mv ${LEGACY_MONOREPO_DIR}device/device-manager-batch ${NEW_MONOREPO_DIR}device-manager-batch

# Deleting legacy directory
rm -rf ${LEGACY_MONOREPO_DIR}


#echo "Moving legacy-monorepo structure from ${LEGACY_MONOREPO_DIR} into a new root in ${NEW_MONOREPO_DIR}"
#mkdir ${NEW_MONOREPO_DIR}
#
#for image in ${MONOREPO_IMAGES}
#do
#  original_dir=${LEGACY_MONOREPO_DIR}$(echo ${image} | cut -d ',' -f 1)
#  repo_dir=${NEW_MONOREPO_DIR}$(echo ${image} | cut -d ',' -f 2 | sed 's|dojot/||')
#
#  echo "Moving monorepo sub-directory '${original_dir}' into ${repo_dir}"
#  #cp -r ${original_dir} ${repo_dir}
#  mv ${original_dir} ${repo_dir}
#  sleep 0.2
#done
#
#echo "Removing legacy monorepo in '${LEGACY_MONOREPO_DIR}'"
##rm -rf "${LEGACY_MONOREPO_DIR}"

