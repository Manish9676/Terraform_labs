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
<<<<<<< HEAD
                echo 'deploy-Artifacts'
=======
                echo 'dpploy-Artifacts'
>>>>>>> dbb98d90c8b5de65ad506286d561c0e88bf23701
            }
        }
    }
}

