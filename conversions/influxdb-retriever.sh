sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/storage/time-series/influxdb/retriever?at=refs%2Fheads%2Frelease%2Fv1.0.0|../influxdb-retriever/doc-influxdb-retriever.html|g' -i ../html-docs/source/components-and-apis.html
sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/storage/time-series/influxdb/retriever/api/openapi-v1.yaml?at=refs%2Fheads%2Frelease%2Fv1.0.0|../influxdb-retriever/api/api-influxdb-retriever.html|g' -i ../html-docs/source/components-and-apis.html

redoc-cli bundle -o ../html-docs/influxdb-retriever/api/api-influxdb-retriever.html ../new-structure/apps/influxdb-retriever/api/openapi-v1.yaml
pandoc --css=estilo.css -s ../new-structure/apps/influxdb-retriever/README.md -o ../html-docs/influxdb-retriever/doc-influxdb-retriever.html
