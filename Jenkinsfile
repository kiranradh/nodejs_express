pipeline {
    agent any
    stages {
        stage('git clone'){
            steps {
                git credentialsId: 'Git_Cred', url: 'https://github.com/anoopkmathew4u/express.git'
            }
        }
        stage('aws log') {
            steps {
              withCredentials([[
             $class: 'AmazonWebServicesCredentialsBinding',
             credentialsId: 'AWS_CONFIG',
             accessKeyVariable: 'AWS_ACCESS_KEY_ID',
             secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']])
                {
                    sh 'aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/y9g5n6b7'
                    sh 'docker build -t myrepo .'
                    sh 'docker tag myrepo:latest public.ecr.aws/y9g5n6b7/myrepo:latest'
                    sh 'docker push public.ecr.aws/y9g5n6b7/myrepo:latest'
}                  
            }
        }
        stage('Terraform') {
            steps {
               sh 'terraform init'
               sh 'terraform plan'
               sh 'terraform apply --auto-approve'

            }
        }

        }
    }
