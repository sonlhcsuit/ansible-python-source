setup:
	echo 'Install virtualenv...'
	virtualenv venv -p=python3
install:
	echo 'Install packages...'
	venv/bin/pip3 install -r requirements.txt
test:
	echo 'Running test...'
start:
	echo 'Application running...'
	venv/bin/python main.py &
