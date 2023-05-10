
#!/bin/bash

source ./00-directories.env

# Creating html docs path
mkdir html-docs

# Creating source path for services docs
mkdir html-docs/source

cp -r new-structure/docs/source/pdf/ html-docs/source
cp -r new-structure/docs/source/images html-docs/source

echo html-docs/ html-docs/source/ | xargs -n 1 cp -v estilo.css

# Converting md in html
pandoc --css=estilo.css -s new-structure/docs/README.md -o html-docs/dojot.html
sed 's|\.md|\.html|g' html-docs/dojot.html -i

pandoc --css=estilo.css -s new-structure/docs/source/architecture.md -o html-docs/source/architecture.html
sed 's|\.md|\.html|g' html-docs/source/architecture.html -i

pandoc --css=estilo.css -s new-structure/docs/source/authentication.md -o html-docs/source/authentication.html
sed 's|\.md|\.html|g' html-docs/source/authentication.html -i

pandoc --css=estilo.css -s new-structure/docs/source/concepts.md -o html-docs/source/concepts.html
sed 's|\.md|\.html|g' html-docs/source/concepts.html -i

pandoc --css=estilo.css -s new-structure/docs/source/components-and-apis.md -o html-docs/source/components-and-apis.html
sed 's|\.md|\.html|g' html-docs/source/components-and-apis.html -i

pandoc --css=estilo.css -s new-structure/docs/source/copyright-and-license.md -o html-docs/source/copyright-and-license.html
sed 's|\.md|\.html|g' html-docs/source/copyright-and-license.html -i

pandoc --css=estilo.css -s new-structure/docs/source/first.md -o html-docs/source/first.html
sed 's|\.md|\.html|g' html-docs/source/first.html -i

pandoc --css=estilo.css -s new-structure/docs/source/front_end.md -o html-docs/source/front_end.html
sed 's|\.md|\.html|g' html-docs/source/front_end.html -i

pandoc --css=estilo.css -s new-structure/docs/source/installation-guide.md -o html-docs/source/installation-guide.html
sed 's|\.md|\.html|g' html-docs/source/installation-guide.html -i

pandoc --css=estilo.css -s new-structure/docs/source/internal-communication.md -o html-docs/source/internal-communication.html
sed 's|\.md|\.html|g' html-docs/source/internal-communication.html -i

pandoc --css=estilo.css -s new-structure/docs/source/iotagent-architecture.md -o html-docs/source/iotagent-architecture.html
sed 's|\.md|\.html|g' html-docs/source/iotagent-architecture.html -i

pandoc --css=estilo.css -s new-structure/docs/source/keycloak_implementation.md -o html-docs/source/keycloak_implementation.html
sed 's|\.md|\.html|g' html-docs/source/keycloak_implementation.html -i

pandoc --css=estilo.css -s new-structure/docs/source/load-testing-dojot-platform.md -o html-docs/source/load-testing-dojot-platform.html
sed 's|\.md|\.html|g' html-docs/source/load-testing-dojot-platform.html -i

pandoc --css=estilo.css -s new-structure/docs/source/maintenance_guide.md -o html-docs/source/maintenance_guide.html
sed 's|\.md|\.html|g' html-docs/source/maintenance_guide.html -i

pandoc --css=estilo.css -s new-structure/docs/source/monitoring-implementation.md -o html-docs/source/monitoring-implementation.html
sed 's|\.md|\.html|g' html-docs/source/monitoring-implementation.html -i

pandoc --css=estilo.css -s new-structure/docs/source/new_service.md -o html-docs/source/new_service.html
sed 's|\.md|\.html|g' html-docs/source/new_service.html -i

pandoc --css=estilo.css -s new-structure/docs/source/publication.md -o html-docs/source/publication.html
sed 's|\.md|\.html|g' html-docs/source/publication.html -i

pandoc --css=estilo.css -s new-structure/docs/source/releases.md -o html-docs/source/releases.html
sed 's|\.md|\.html|g' html-docs/source/releases.html -i

pandoc --css=estilo.css -s new-structure/docs/source/telemetria.md -o html-docs/source/telemetria.html
sed 's|\.md|\.html|g' html-docs/source/telemetria.html -i

pandoc --css=estilo.css -s new-structure/docs/source/tenants_creation.md -o html-docs/source/tenants_creation.html
sed 's|\.md|\.html|g' html-docs/source/tenants_creation.html -i

mkdir html-docs/backstage html-docs/backstage/api
mkdir html-docs/cert-sidecar
mkdir html-docs/basic-auth html-docs/basic-auth/api
mkdir html-docs/certificate-acl
mkdir html-docs/cron html-docs/cron/api
mkdir html-docs/data-manager html-docs/data-manager/api
mkdir html-docs/device-manager html-docs/device-manager/api
mkdir html-docs/device-manager-batch html-docs/device-manager-batch/api
mkdir html-docs/ejbca
mkdir html-docs/file-mgmt html-docs/file-mgmt/api
mkdir html-docs/flowbroker html-docs/flowbroker/api
mkdir html-docs/gui-v2
mkdir html-docs/history-proxy
mkdir html-docs/http-agent
mkdir html-docs/influxdb-retriever html-docs/influxdb-retriever/api
mkdir html-docs/influxdb-storer
mkdir html-docs/k2v-bridge
mkdir html-docs/kafka-loopback html-docs/kafka-ws html-docs/kafka2ftp
mkdir html-docs/keycloak html-docs/keycloak-microservice-sidecar html-docs/keycloak-proxy
mkdir html-docs/kong
mkdir html-docs/report-manager html-docs/report-manager/api
mkdir html-docs/telegraf html-docs/telegraf/input html-docs/telegraf/output
mkdir html-docs/v2k-bridge
mkdir html-docs/vernemq-dojot
mkdir html-docs/x509-identity-mgmt html-docs/x509-identity-mgmt/api




echo html-docs/influxdb-retriever/ html-docs/telegraf/ html-docs/keycloak-proxy/ html-docs/report-manager/ html-docs/device-manager-batch/ \
     html-docs/device-manager/ html-docs/gui-v2/ html-docs/flowbroker/ html-docs/http-agent/ html-docs/data-manager/ html-docs/cron/ \
     html-docs/x509-identity-mgmt/ html-docs/file-mgmt/ html-docs/basic-auth/ | xargs -n 1 cp -v estilo.css

cd conversions
bash -x backstage.sh
bash -x basic-auth.sh
bash -x cert-sidecar.sh
bash -x certificate-acl.sh
bash -x cron.sh
bash -x data-manager.sh
bash -x device-manager.sh
bash -x device-manager-batch.sh
bash -x ejbca.sh
bash -x file-mgmt.sh
bash -x flowbroker.sh
bash -x gui-nx.sh
bash -x history-proxy.sh
bash -x http-agent.sh
bash -x influxdb-retriever.sh influxdb-storer.sh influxdb-telegraf.sh
bash -x k2v.sh
bash -x kafka-loopback.sh kafka-ws.sh kafka2ftp.sh
bash -x keycloak.sh keycloak-proxy.sh keycloak-microservice-sidecar.sh
bash -x kong.sh
bash -x report-manager.sh
bash -x v2k.sh
bash -x vernemq.sh
bash -x x509-identity-mgmt.sh

rm -rf ${MONOREPO_BASE_DIR}


