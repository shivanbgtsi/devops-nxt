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
                    echo spec/env/dev.sh
                    sh 'shellspec --env-from spec/env/dev.sh --format tap'
                    
            }
        }
        stage("Verify"){
            steps {
                echo "test"
            }
        }
    }
}
    
