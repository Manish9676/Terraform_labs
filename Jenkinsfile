pipeline {
    agent any
    stages {
        publishChecks detailsURL: 'http://34.209.63.253:8080/job/test/', name: 'Test', summary: 'Success', text: 'Confirm to Merge', title: 'Test-Report'
        stage('Git Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'terraform', url: 'git@github.com:Manish9676/Terraform_labs.git']]])
            }
         }
        stage('publish artifacts') {
            steps {
                echo 'deploy-Artifacts'
            }
        }
    }
}

