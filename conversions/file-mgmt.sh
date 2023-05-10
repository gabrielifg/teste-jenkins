sed 's|[File-Mgmt](https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/storage/file/minio/file-mgmt?at=refs%2Fheads%2Frelease%2Fv1.0.0)||g' -i ../html-docs/source/components-and-apis.html
sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/storage/file/minio/file-mgmt?at=refs%2Fheads%2Frelease%2Fv1.0.0|../file-mgmt/doc-file-mgmt.html|g' -i ../html-docs/source/components-and-apis.html
sed 's|https://bitbucket.cpqd.com.br/projects/DOJOT/repos/dojot/browse/storage/file/minio/file-mgmt/docs/openapi-v1.yml?at=refs%2Fheads%2Frelease%2Fv1.0.0#|../file-mgmt/api/api-file-mgmt.html|g' -i ../html-docs/source/components-and-apis.html

redoc-cli bundle -o ../html-docs/file-mgmt/api/api-file-mgmt.html ../new-structure/apps/file-mgmt/docs/openapi-v1.yml
pandoc --css=estilo.css -s ../new-structure/apps/file-mgmt/README.md -o ../html-docs/file-mgmt/doc-file-mgmt.html

mkdir ../html-docs/file-mgmt/src/
cp -r ../new-structure/apps/file-mgmt/src/config ../html-docs/file-mgmt/src/
