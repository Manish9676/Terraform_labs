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
                echo 'deploy-Artifacts'
            }
        }
    }
    post {
            success {
                       curl "https://api.GitHub.com/repos/Manish9676/Terraform_labs/statuses/$GIT_COMMIT?access_token=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" \
                       -H "Content-Type: application/json" \
                       -X POST \
                       -d "{\"state\": \"success\",\"context\": \"continuous-integration/jenkins\", \"description\": \"Jenkins\", \"target_url\": \"http://34.209.63.253:8080/job/test/$BUILD_NUMBER/console\"}"
            }
            failure {
                     curl "https://api.GitHub.com/repos/Manish9676/Terraform_labs/statuses/$GIT_COMMIT?access_token=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" \
                     -H "Content-Type: application/json" \
                     -X POST \
                     -d "{\"state\": \"failure\",\"context\": \"continuous-integration/jenkins\", \"description\": \"Jenkins\", \"target_url\": \"http://34.209.63.253:8080/job/test/$BUILD_NUMBER/console\"}"

            }
    }
}

