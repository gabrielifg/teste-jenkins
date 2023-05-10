sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/device-manager/browse?at=refs%2Fheads%2Frelease%2Fv1.0.0|../device-manager/doc-device-manager.html|g' -i ../html-docs/source/components-and-apis.html
sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/device-manager/browse/docs/openapi-v1.yml?at=refs%2Fheads%2Frelease%2Fv1.0.0|../device-manager/api/api-device-manager.html|g' -i ../html-docs/source/components-and-apis.html

redoc-cli bundle -o ../html-docs/device-manager/api/api-device-manager.html ../new-structure/apps/device-manager/docs/openapi-v1.yml
pandoc --css=estilo.css -s ../new-structure/apps/device-manager/README.md -o ../html-docs/device-manager/doc-device-manager.html
