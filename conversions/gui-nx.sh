sed 's|[GUI](https://bitbucket.cpqd.com.br/projects/DOJOT/repos/gui-v2/browse?at=refs%2Fheads%2Frelease%2Fv1.0.0)||g' -i ../html-docs/source/components-and-apis.html
sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/gui-v2/browse?at=refs%2Fheads%2Frelease%2Fv1.0.0|../gui-v2/doc-gui-v2.html|g' -i ../html-docs/source/components-and-apis.html

pandoc --css=estilo.css -s ../new-structure/apps/gui-v2/README.md -o ../html-docs/gui-v2/doc-gui-v2.html
