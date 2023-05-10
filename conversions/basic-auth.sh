sed 's|\[Basic-auth\]\(https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/iam/device-basic-authentication?at=refs%2Fheads%2Frelease%2Fv1.0.0\)||g' -i ../html-docs/source/components-and-apis.html
sed 's|[Basic-auth Docs.](https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/iam/device-basic-authentication?at=refs%2Fheads%2Frelease%2Fv1.0.0)|[Basic-auth Docs.](../basic-auth/doc-basic-auth.html)|g' -i ../html-docs/source/components-and-apis.html
sed 's|[API - Basic-auth](https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/iam/device-basic-authentication?at=refs%2Fheads%2Frelease%2Fv1.0.0)|[API - Basic-auth](../basic-auth/api/api-basic-auth.html)|g' -i ../html-docs/source/components-and-apis.html

redoc-cli bundle -o ../html-docs/basic-auth/api/api-basic-auth.html ../new-structure/apps/device-basic-authentication/apidocs/openapi-v1.yml
pandoc --css=estilo.css -s ../new-structure/apps/device-basic-authentication/README.md -o ../html-docs/basic-auth/doc-basic-auth.html
