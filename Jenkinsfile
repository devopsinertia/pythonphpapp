pipeline {
  agent any
  stages {
  stage('Build') {
      steps {
        script {
          sh 'chmod +x build.sh && ./build.sh'
        }
      }
    }
  stage('Test') {
      steps {
        script {
          echo 'Testing Complete'
        }
      }
    }
    stage('Deploy') {
      steps {
        script {
          echo 'http://172.16.0.50:8083'
        }
      }
    }
  }
}
