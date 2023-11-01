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
                    sh 'make'
                    sh 'ls'
                    sh 'pwd'
                    // sh 'renode'
                    // sh 'quit'
                    // sh 'renode-test ASM-CopyString.robot'
                    sh 'renode-test /home/renode/tests/platforms/STM32F103.robot'
                    // sh 'renode-test /home/renode/tests/platforms/SiFive-FU540.robot'
                }
                // sh 'renode-test /home/renode/tests/platforms/STM32F103.robot'
            }
        }
        
        stage('Goodbye') {
            steps {
                echo 'Gooodbye, Jenkins!'
            }
        }
    }
}
