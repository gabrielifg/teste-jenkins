sed 's|[HTTP Agent](https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/connector/http-agent?at=refs%2Fheads%2Frelease%2Fv1.0.0)||g' -i ../html-docs/source/components-and-apis.html
sed 's|[API - HTTP Agent](https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/connector/http-agent?at=refs%2Fheads%2Frelease%2Fv1.0.0)||g' -i ../html-docs/source/components-and-apis.html
sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/connector/http-agent?at=refs%2Fheads%2Frelease%2Fv1.0.0|../http-agent/doc-http-agent.html|g' -i ../html-docs/source/components-and-apis.html

pandoc --css=estilo.css -s ../new-structure/apps/http-agent/README.md -o ../html-docs/http-agent/doc-http-agent.html
