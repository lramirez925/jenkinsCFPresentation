pipeline {
  agent {
    docker {
      image 'ortussolutions/commandbox'
      args '-u=root'
    }

  }
  stages {
    stage('Build') {
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
    stage('Unit Tests') {
      steps {
        sh 'box testbox run runner="http://localhost:8080/tests/index.cfm" reporter="JUnit" directory="tests.specs" outputFile="./junitResults.xml"'
        echo 'Running Unit Tests'
      }
    }
    stage('Deploy') {
      steps {
        echo 'Deploying'
      }
    }
  }
}