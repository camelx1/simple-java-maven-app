pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Build') {
            steps {
                echo "${BUILD_NUMBER}"
                echo "${GIT_COMMIT}"
                sh "mvn -B -DskipTests clean package"
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml'
                }
            }
        }
        stage('Building image') {
            steps {
                docker.build("my-image:${env.BUILD_ID}")
            }
        }
    }
}
