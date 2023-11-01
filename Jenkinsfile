pipeline {
    agent {
        docker {
            image 'luckycometdaft/emcigccarm:v3'
        }
    }
    stages {
        stage('Hello') {
            steps {
                echo 'Hello'
                sh 'arm-none-eabi-gcc -v'
                sh 'ls'
            }
        }
        
        stage('Goodbye') {
            steps {
                echo 'Gooodbye, Jenkins!'
            }
        }
    }
}
