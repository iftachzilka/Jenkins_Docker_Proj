     
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
                echo "Building docker image..."
                sh "docker build -t alpine-docker ."
                echo "the name of docker => ${CON_NAME} "
                echo "End of stage build...."
            }
        }
        stage('3-Test all env variables') {
            steps {
                echo "Start of stage test"
                echo "Testing...."
                echo "The project name -> ${PROJECT_NAME}"
                echo "The Owner is -> ${OWNER_NAME}"
                echo "The project description -> ${PROJECT_DESCRIPT}"
                echo "End of stage test"
            }
        }
        stage('4-Deploy') {
            steps {
                echo "Start stage of deploy"
                echo "Doing Somthing..."
                echo "Still doing..."
                sh 'ls -la'
                sh "docker run -d -p 8000:8000 --name ${CON_NAME} alpine-docker"
                echo "End stage of deploy"
            }
        }
         stage('5-Checks') {
            steps {
                echo "Start check the docker health"
                echo "Doing Somthing..."
                sh 'docker ps -a'
                sh '''
                doc=`docker ps -a --filter "name=iftach_alpine_doc"`
                echo $doc
                sleep 5
                if docker ps -a --filter "name=${CON_NAME}" | grep -q "${CON_NAME}"; then
                    echo "Container ${CON_NAME} exists."
                    docker stop ${CON_NAME}
                    rmm=`docker rm ${CON_NAME}`
                    echo "Container `'$rmm`' are deleted"
                else
                    echo "Container ${CON_NAME} does not exist."
                fi
                '''
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
