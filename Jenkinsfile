pipeline {
    agent any
    stages {
        stage('Git Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'terraform', url: 'git@github.com:Manish9676/Terraform_labs.git']]])
            }
         }
        stage('publish artifacts') {
            steps {
                echo 'Deploy-Artifacts'
            }
        }
        publishChecks actions: [[identifier: '', label: '']], detailsURL: 'https://github.com/Manish9676/Terraform_labs', name: 'Test', status: 'IN_PROGRESS', title: 'Test'
    }
}

