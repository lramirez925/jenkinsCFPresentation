pipeline {
  agent {
    docker {
      image 'ortussolutions/commandbox'
      args '-u=root'
    }

  }
  stages {
    stage('error') {
      steps {
        echo 'In Build Script. '
        sh 'ls'
        sh 'box server start port=8080'
        sh 'box cfconfig import myConfig.json'
        sh 'box cfconfig import testConfig.json'
        sh 'box install'
        sh 'box server restart'
      }
    }
  }
}