clean:
	echo 'Cleaning...'
	rm -rf venv
setup:
	echo 'Install virtualenv...'
	virtualenv venv -p=python3
install:
	echo 'Install packages...'
	venv/bin/pip install -r requirements.txt
build: clean setup install
test:
	echo 'Running test...'
start:
	echo 'Application running...'
	venv/bin/python main.py &
