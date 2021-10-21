pipeline {
	agent any
	stages {
		stage('Build') {
			steps {
				sh 'make setup'
				sh 'make install'
			}
		}
		stage('Test') {
			steps {
				sh 'make test'
			}
		}
		stage('Deploy') {
			steps {
				sh 'nohup ./venv/bin/python main.py &'
			}
		}
	}
}
