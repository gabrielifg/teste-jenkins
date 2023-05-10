# É preciso instalar "npm install -g apib2swagger"
apib2swagger -i ../new-structure/apps/backstage/src/docs/apiary.apib --open-api-3 --yaml -o ../new-structure/apps/backstage/src/docs/openapi-v1.yml
redoc-cli bundle -o ../html-docs/backstage/api/api-backstage.html ../new-structure/apps/backstage/src/docs/openapi-v1.yml
pandoc --css=estilo.css -s ../new-structure/apps/backstage/README.md -o ../html-docs/backstage/doc-backstage.html
