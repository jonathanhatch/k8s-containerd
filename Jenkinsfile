Jenkinsfile (Declarative Pipeline)
pipeline {
    agent { docker { image 'ubuntu:latest' } }
    stages {
        stage('build') {
            steps {
                sh 'git clone https://github.com/jonathanhatch/k8s-containerd.git'
		sh 'echo "yes!"'
            }
        }
    }
}
