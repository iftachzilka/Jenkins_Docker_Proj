
pipeline {
    
    agent any
    environment {
        PROJECT_NAME = "Finel_Project_Jenkins"
        PROJECT_DESCRIPT = "=== build docker image push it to git and run this docker with jenkins ==="
        OWNER_NAME = "Iftach"
        CON_NAME = "iftach_alpine_doc"
    }
    stages {
        stage('1-Starting') {
            steps {
                echo "Start..."
                echo "Building..."
                echo "End of stage starting...."
            }
        }
        stage('2-Build') {
            steps {
                echo "Start of stage build..."
                echo "Building..."
                echo "${CON_NAME}"
                sh "docker build -t alpine-docker ."
                sh "docker run -d -p 8000:8000 --name ${CON_NAME} alpine-docker"
                echo "End of stage build...."
            }
        }
        stage('2-Test') {
            steps {
                echo "Start of stage test"
                echo "Testing...."
                echo "private ${PROJECT_NAME}"
                echo "Owner ${OWNER_NAME}"
                echo "End of stage test"
            }
        }
        stage('3-Deploy') {
            steps {
                echo "Start stage of deploy"
                echo "Doing Somthing..."
                sh 'ls -la'
                sh '''
                echo "Line1"
                echo "Line2"
                echo "Line3"
                '''
                sh "cat ./dockerfile"
                echo "End stage of deploy"
            }
        }
    }
    post {
        always {
            deleteDir()
        }
    }
}
