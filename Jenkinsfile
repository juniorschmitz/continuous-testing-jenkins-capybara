pipeline {
    agent {
        docker {
            image "ruby:alpine"
            args "--network=skynet" 
        }
    }
    stages {
        stage("Build") {
            steps {
                sh "chmod +x scripts/alpine.sh"
                sh "./scripts/alpine.sh"
                sh "bundle install"
            }
        }
        stage("Tests") {
            steps {
                sh "bundler exec cucumber -p ci"
            }
        }
    }
}
