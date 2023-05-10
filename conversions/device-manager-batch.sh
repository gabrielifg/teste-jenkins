sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/device/device-manager-batch?at=release%2Fv1.0.0|../device-manager-batch/doc-device-manager-batch.html|g' -i ../html-docs/source/components-and-apis.html
sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/device/device-manager-batch/docs/openapi-v1.yaml?at=refs%2Fheads%2Frelease%2Fv1.0.0|../device-manager-batch/api/api-device-manager-batch.html|g' -i ../html-docs/source/components-and-apis.html

redoc-cli bundle -o ../html-docs/device-manager-batch/api/api-device-manager-batch.html ../new-structure/apps/device-manager-batch/docs/openapi-v1.yaml
pandoc --css=estilo.css -s ../new-structure/apps/device-manager-batch/README.md -o ../html-docs/device-manager-batch/doc-device-manager-batch.html
