sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/flowbroker/browse?at=refs%2Fheads%2Frelease%2Fv1.0.0|../flowbroker/doc-flowbroker.html|g' -i ../html-docs/source/components-and-apis.html
sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/flowbroker/browse/docs/openapi-v1.yml?at=refs%2Fheads%2Frelease%2Fv1.0.0|../flowbroker/api/api-flowbroker.html|g' -i ../html-docs/source/components-and-apis.html

redoc-cli bundle -o ../html-docs/flowbroker/api/api-flowbroker.html ../new-structure/apps/flowbroker/docs/openapi-v1.yml
pandoc --css=estilo.css -s ../new-structure/apps/flowbroker/README.md -o ../html-docs/flowbroker/doc-flowbroker.html
