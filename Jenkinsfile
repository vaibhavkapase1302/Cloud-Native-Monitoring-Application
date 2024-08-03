pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
         stage('Clone repository') { 
            steps { 
                script{
                checkout scm
                }
            }
        }

        stage('Build') { 
            steps { 
                script{
                 app = docker.build("my_monitoring_app_image")
                }
            }
        }
        stage('Test'){
            steps {
                 echo 'Empty'
            }
        }
        stage('Deploy') {
            steps {
                script{
                        docker.withRegistry('https://201637191246.dkr.ecr.ap-south-1.amazonaws.com', 'ecr:ap-south-1:aws-credentials') {
                    app.push("${env.BUILD_NUMBER}")
                    app.push("latest")
                    }
                }
            }
        }
    }
}

///////////////////////////////


pipeline {
    agent any
}

stages {

    stage('Clean Workspace') {
        steps {
            cleanWS deleteDirs: true
        }
    }

    stage('Code Checkout') {
        steps {
            git credentialsId: 'github-creds', 
                url: 'https://github.com/Cloud-Native.git', 
                branch: 'main'
                sh "ls -alrt"
            }
        }
    }

    stage('Build Image') {
        steps {
            dir('app-code'){
                bat "docker build -t flask-app:${params.IMAGE_TAG} ."
            }
        }
    }

    stage('Build Manifest and Push') {
        steps {
            bat "aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 494855333795.dkr.ecr.us-east-1.amazonaws.com"
            bat "docker build -t flask-app:${params.IMAGE_TAG} ."
            bat "docker tag flask-app:${params.IMAGE_TAG} 494855333795.dkr.ecr.us-east-1.amazonaws.com/flask-app:${params.IMAGE_TAG}"
            bat "docker push 494855333795.dkr.ecr.us-east-1.amazonaws.com/flask-app:${params.IMAGE_TAG}"
        }
    }

    stage('Deploy Image on EKS') {

    }

post {
    always {
        echo 'Pipeline completed.'
        }
    }


////////////////

pipeline {
    agent any

    stages {
        stage('Set Credentials') {
            steps {
                withAWS(credentials: 'your-aws-credentials-id') {
                    script {
                        echo 'AWS credentials are set.'
                    }
                }
            }
        }

        stage('Checkout Terraform Script') {
            steps {
                // Checkout the code from GitHub using the specified credentials and branch
                git credentialsId: 'github-creds', 
                    url: 'https://github.com/Fafnir.git', 
                    branch: 'script-xls-fire'
                // List files in the working directory
                sh "ls -alrt"
                }
            }
        }

        stage('Initializing Terraform') {
            steps {
                script {
                    dir('terraform') {
                        sh 'terraform init'
                    }
                }
            }
        }

        stage('Validating Terraform') {
            steps {
                script {
                    dir('terraform') {
                        sh 'terraform validate'
                    }
                }
            }
        }

        stage('Previewing the Infrastructure') {
            steps {
                script {
                    dir('terraform') {
                        sh 'terraform plan'
                    }
                    input(message: "Approve?", ok: "Proceed")
                }
            }
        }

        stage('Create/Destroy an EKS Cluster') {
            steps {
                script {
                    dir('terraform') {
                        sh 'terraform ${action} --auto-approve'
                    }
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished.'
        }
    }
}
