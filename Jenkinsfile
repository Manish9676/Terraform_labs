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
                echo 'deployartifacts'
=======
                echo 'Deploy-Artifacts'
>>>>>>> 28091712b4ffeac161cdeeac4e11ee207a34aeef
            }
        }
    }
}

