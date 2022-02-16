pipeline {
    agent any
    stages {
        stage('Git Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'terraform', url: 'git@github.com:Manish9676/Terraform_labs.git']]])
            git clone git@github.com:Manish9676/Terraform_labs.git       
            }
         }
        stage('Publish Artifacts') {
            steps {
                echo 'Deploy to Artifacts'
            }
            
        }
    }
}

