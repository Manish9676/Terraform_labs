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
                echo 'depploy-Artifacts'
            }
        }
    }
}

