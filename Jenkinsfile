pipeline {
  agent {
    node {
      label 'maven'
    }
    
  }
  stages {
    stage('Checkout Source') {
      steps {
        git(url: 'https://github.com/wkulhanek/openshift-tasks', branch: 'master')
      }
    }
    stage('Build WAR') {
      steps {
        readMavenPom(file: 'pom.xml')
        sh 'mvn clean install'
      }
    }
  }
}