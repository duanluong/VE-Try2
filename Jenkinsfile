pipeline {
    agent {
        docker {
            image 'luckycometdaft/emcigccarm:v4'
            args '--user root'
        }
    }
    stages {
        stage('Build') {
            steps {
                echo 'Hello from GCC'
                sh 'arm-none-eabi-gcc -v'
                dir('Ex02-CopyString') {
                    sh 'make'
                }
            }
        }
        
        stage('Testing') {
            steps {
                dir('Ex02-CopyString') {
                    sh 'ls'
                    sh 'mkdir -p outTest'
                    sh 'renode-test -d outTest ASM-CopyString.robot'
                }
            }
        }

        stage('End') {
            steps {
                echo 'Goodbye, Jenkins!'
            }
        }
    }

    post {
        always {
            dir('Ex02-CopyString') {
                sh 'ls -l'
                robot outputPath: '.', outputFileName: 'robot_output.xml'
                archiveArtifacts artifacts: 'robot_output.xml', fingerprint: false
            }
        }
    }
}
