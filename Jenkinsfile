pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
				/* bash 'virtualenv venv -p=python3' */
				/* bash 'venv/bin/pip install -r requirements.txt' */
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
				bash 'venv/bin/python main.py'
            }
        }
    }
}
