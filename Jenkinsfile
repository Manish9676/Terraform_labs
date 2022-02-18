pipeline {
    agent any
    stages {
        stage('Git Checkout') {
            steps {
            checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'terraform', url: 'git@github.com:Manish9676/Terraform_labs.git']]])
            }
         }
        stage('Publish Artifacts') {
            steps {
<<<<<<< HEAD
                echo 'deploy-Artifacts'
=======
                echo 'deeploy-Artifacts'
>>>>>>> 6b4241edd5ebd5f41007e329d4009aed2e994a9d
            }
        }
    }
}

