sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/data-visualization/reports/report-manager?at=refs%2Fheads%2Frelease%2Fv1.0.0|../report-manager/doc-report-manager.html|g' -i ../html-docs/source/components-and-apis.html
sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/data-visualization/reports/report-manager/docs/swagger.yml?at=release%2Fv1.0.0|../report-manager/api/api-report-manager.html|g' -i ../html-docs/source/components-and-apis.html

redoc-cli bundle -o ../html-docs/report-manager/api/api-report-manager.html ../new-structure/apps/report-manager/docs/swagger.yml
pandoc --css=estilo.css -s ../new-structure/apps/report-manager/README.md -o ../html-docs/report-manager/doc-report-manager.html
