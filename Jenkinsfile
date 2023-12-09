pipeline {
    agent { label "projecta"}

    stages {
        stage('git clone') {
            steps {
                git 'https://github.com/Vinitha-Nayak/Car-Project.git'
            }
        }
        stage('install httpd') {
            steps {
                sh 'yum install httpd -y'
                sh 'systemctl start httpd'
                sh 'systemctl enable httpd'
            }
        }
        stage('copy from src to des') {
            steps {
                sh 'cp -r /var/jenkins/workspace/httpd-pipline/*  /var/www/html/'
                sh 'cd /var/www/html/'
                sh 'ls'
            }
        }
    }
}
