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
            	echo pwd
            	dir("/var/lib/jenkins/workspace/test"){
                   echo  pwd
                   sh 'shellspec --env-from spec/env/dev.sh --format tap'
                 }
                    sh '''
                    source spec/env/dev.sh
                    shellspec --format tap
                	'''
            }
        }
        stage("Verify"){
            steps {
                echo "test"
            }
        }
    }
}
    
