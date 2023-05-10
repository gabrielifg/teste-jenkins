# É preciso instalar "npm install -g apib2swagger"
apib2swagger -i ../new-structure/apps/kafka-ws/docs/apiary.apib --open-api-3 --yaml -o ../new-structure/apps/kafka-ws/docs/openapi-v1.yml
redoc-cli bundle -o ../html-docs/kafka-ws/api/api-kafka-ws.html ../new-structure/apps/kafka-ws/docs/openapi-v1.yml
pandoc --css=estilo.css -s ../new-structure/apps/kafka-ws/README.md -o ../html-docs/kafka-ws/doc-kafka-ws.html
