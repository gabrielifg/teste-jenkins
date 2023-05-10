# Monorepo temporário

## Criando a estrutura

Execute cada um dos scripts

`bash -x 01-checkout-everything.sh`

`bash -x 02-explode-current-monorepo.sh`

`bash -x 04-merge-every-repo-into-a-unified-structure.sh`

## Gerando os documentos

### Buildando a imagem que será utilizada para pandoc/redoc-cli

`docker build . -t dojot/docs-builder`

Essa imagem possui as ferramentas `pandoc` e `redoc-cli`.

Para utilizá-las, use a imagem montando o diretório de trabalho como volume e passando o comando como parâmetro.

```
docker run --rm \
  -v $(pwd)/new-structure/:/monorepo/ \
  dojot/docs-builder pandoc /monorepo/docs/docs/README.md -o /monorepo/docs/docs/README.html

```

Ao rodar o comando de exemplo, o arquivo `README.html` deverá ser gerado em `new-structure/docs/docs/`

Se quiser adicionar outro diretório como output, monte um segundo volume passando uma nova pasta

```
mkdir html-docs
```

```
docker run --rm \
  -v $(pwd)/new-structure/:/monorepo/ \
  -v $(pwd)/html-docs/:/output/ \
  dojot/docs-builder pandoc /monorepo/docs/docs/README.md -o /output/README.html
```

Para uso do `redoc-cli`, o comando é análogo

```
mkdir -p html-docs/device-manager/docs/
```

```
docker run --rm \
  -v $(pwd)/new-structure/:/monorepo/ \
  -v $(pwd)/html-docs/:/output/ \
  dojot/docs-builder redoc-cli bundle -o /output/device-manager/docs/openapi-v1.html /monorepo/apps/device-manager/docs/openapi-v1.yml
```

Por fim, uma vez com os documentos gerados, realize os ajustes de referência/extensão (em construção)

`bash -x 06-replace-absolute-paths.sh`

`bash -x 07-convert-docs-to-html.sh`

Após finalizado, os arquivos utilizados podem ser removidos com o script

`bash -x 09-cleanup-everything.sh`
