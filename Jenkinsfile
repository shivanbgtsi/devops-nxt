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
        stage("testnig"){
              steps {
                   shellspec --require spec/spec_helper --output tap --format documentation spec/packer.sh
                   // sh  'shellspec --require spec/spec_helper --env-from spec/env/dev.sh --output tap --format documentation spec/packer.sh'
              }
        }
        stage("Verify"){
            steps {
                echo "test"
            }
        }
    }
}
    
