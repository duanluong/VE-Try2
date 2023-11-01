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
                dir('Ex02-CopyString') {
                    sh 'mkdir -p outTest'
                    sh 'make'
                    sh 'ls'
                    sh 'renode-test -d outTest ASM-CopyString.robot'
                    // sh 'renode-test /home/renode/tests/platforms/STM32F103.robot'
                }
                // sh 'renode-test /home/renode/tests/platforms/STM32F103.robot'
            }
        }
        
        stage('Goodbye') {
            steps {
                echo 'Gooodbye, Jenkins!'
            }
        }

        // post {
        //     always {
        //         robot outputPath: 'Ex02-CopyString/outTest/'
        //         archive "Ex02-CopyString/outTest/*"
        //     }
        // }
    }
}
