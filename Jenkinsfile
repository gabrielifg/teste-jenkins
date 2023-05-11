pipeline {
    agent {
        label 'ubuntu'
    }

    stages {
        stage('Checkout everything') {
            steps {
                bash -xv 01-checkout-everything.sh
            }
        }
        stage('Breaking down the repositories') {
            steps {
                bash -xv 03-merge-every-repo-into-a-unified-structure.sh
            }
        }
        stage('Conversion of documents to html') {
            steps {
                bash -xv 04-convert-docs-to-html.sh
            }
        }
        stage('Sending HTML documents to Drive') {
            steps {
                googleDriveUpload(credentialsId: 'google-drive-credentials', filePath: 'html-docs', destinationFolderId: 'Versao_Teste_Dojot')
            }
        }
    }
}