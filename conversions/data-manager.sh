sed 's|[Data Manager](https://bitbucket.cpqd.com.br/projects/DOJOT/repos/data-manager/browse?at=refs%2Fheads%2Frelease%2Fv1.0.0)||g' -i ../html-docs/source/components-and-apis.html
sed 's|[API - Data Manager](https://bitbucket.cpqd.com.br/projects/DOJOT/repos/data-manager/browse?at=refs%2Fheads%2Frelease%2Fv1.0.0)|[API - Data Manager](../data-manager/api/api-data-manager.html)|g' -i ../html-docs/source/components-and-apis.html
sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/data-manager/browse?at=refs%2Fheads%2Frelease%2Fv1.0.0|../data-manager/doc-data-manager.html|g' -i ../html-docs/source/components-and-apis.html

# É preciso instalar "npm install -g apib2swagger"
apib2swagger -i ../new-structure/apps/data-manager/docs/apiary.apib --open-api-3 --yaml -o ../new-structure/apps/data-manager/docs/openapi-v1.yml
redoc-cli bundle -o ../html-docs/data-manager/api/api-data-manager.html ../new-structure/apps/data-manager/docs/openapi-v1.yml
pandoc --css=estilo.css -s ../new-structure/apps/data-manager/README.md -o ../html-docs/data-manager/doc-data-manager.html
