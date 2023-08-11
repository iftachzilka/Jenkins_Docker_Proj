
pipeline {
    
    agent any
    environment {
        PROJECT_NAME = "Neptun"
        OWNER_NAME = "Iftach"
        CON_NAME = "alpine_doc"
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
                sh "docker run -d -p 8000:8000 --name ${CON_NAME} -v "/var/run/docker.sock:/var/run/docker.sock:rw" alpine-docker"
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
