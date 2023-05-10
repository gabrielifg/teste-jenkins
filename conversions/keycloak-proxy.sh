sed 's|[API - Keycloak proxy](https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/iam/keycloak-proxy?at=refs%2Fheads%2Frelease%2Fv1.0.0)| |g' -i ../html-docs/source/components-and-apis.html
sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/iam/keycloak-proxy?at=refs%2Fheads%2Frelease%2Fv1.0.0|../keycloak-proxy/doc-keycloak-proxy.html|g' -i ../html-docs/source/components-and-apis.html

pandoc --css=estilo.css -s ../new-structure/apps/keycloak-proxy/README.md -o ../html-docs/keycloak-proxy/doc-keycloak-proxy.html
