sed 's|[Influxdb-telegraf v. dojot](https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/storage/time-series/influxdb/telegraf?at=refs%2Fheads%2Frelease%2Fv1.0.0)|[Influxdb-telegraf input](../telegraf/input/input/doc-input-telegraf.html) [Influxdb-telegraf output](../telegraf/output/doc-output-telegraf.html)|g' -i ../html-docs/source/components-and-apis.html

pandoc --css=estilo.css -s ../new-structure/apps/telegraf/plugins/inputs/kafka_consumer_vdojot/README.md -o ../html-docs/telegraf/input/doc-input-telegraf.html
pandoc --css=estilo.css -s ../new-structure/apps/telegraf/plugins/outputs/influxdb_vdojot/README.md -o ../html-docs/telegraf/output/doc-output-telegraf.html
