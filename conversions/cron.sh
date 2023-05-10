
sed 's|[Cron](https://bitbucket.cpqd.com.br/projects/DOJOT/repos/cron/browse?at=refs%2Fheads%2Ffeature%2FDJINV-354-apiary-1.0.0)||g' -i ../html-docs/source/components-and-apis.html
sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/cron/browse?at=refs%2Fheads%2Ffeature%2FDJINV-354-apiary-1.0.0|../cron/doc-cron.html|g' -i ../html-docs/source/components-and-apis.html
sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/cron/browse/docs/openapi-v1.yml?at=refs%2Fheads%2Ffeature%2FDJINV-354-apiary-1.0.0|../cron/api/api-cron.html|g' -i ../html-docs/source/components-and-apis.html

redoc-cli bundle -o ../html-docs/cron/api/api-cron.html ../new-structure/apps/cron/docs/openapi-v1.yml
pandoc --css=estilo.css -s ../new-structure/apps/cron/README.md -o ../html-docs/cron/doc-cron.html
