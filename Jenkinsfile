pipeline {
    agent any
    environment {
      PASS = Credential('dockerhubPassword')
    }  
    stages {
        stage('Build') {
            steps {
                sh './pipeline/build.sh mvn -DskipTests clean package'
            }
            post {
              success {
                 archiveArtifacts artifacts: '/target/*.jar'
		}
           }
        }
        stage('Test') {
            steps {
                sh './pipeline/test.sh mvn test'
            }
        }
       stage('Publish'){
	   steps {
		sh './pipeline/publish.sh'
	}
      }
      stage('deploy'){
          steps {
             sh './pipeline/deploy.sh'
          }
    }
  }
}
