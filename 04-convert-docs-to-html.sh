
#!/bin/bash

source ./00-directories.env

# Creating html docs path
mkdir html-docs

# Creating source path for services docs
mkdir html-docs/source


echo html-docs/ html-docs/source/ | xargs -n 1 cp -v estilo.css

# Converting md in html
pandoc --css=estilo.css -s new-structure/edge-cluster-ansible/README.md -o html-docs/edge.html
sed 's|\.md|\.html|g' html-docs/edge.html -i

rm -rf ${MONOREPO_BASE_DIR}


