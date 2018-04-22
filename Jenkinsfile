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
        sh 'box testbox run runner="http://localhost:7389/tests/runner.cfm" reporter="JUnit" directory="tests.bundles" outputFile="./junitResults.xml"'
        echo 'Running Unit Tests'
      }
    }
    stage('Deploy') {
      parallel {
        stage('Deploy') {
          steps {
            echo 'Deploying'
          }
        }
        stage('Archive Tests') {
          steps {
            junit(testResults: './junitResults.xml', allowEmptyResults: true)
          }
        }
      }
    }
  }
}