pipeline {
    agent any
    stages {
        stage('test-pipeline') {
            steps {
                echo "Pipeline triggered success"
            }
        }
        stage("verify-build-prerequistes") {
            steps {
            	dir("/var/lib/jenkins/workspace/test"){
                   echo "PWD " pwd
                   sh 'shellspec --env-from spec/env/dev.sh --format tap'
                  }
            }
        }
        stage("Verify"){
            steps {
                echo "test"
            }
        }
    }
}
    
