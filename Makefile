stop:
	lsof -ti :6000 | xargs kill >/dev/null 2>/dev/null 
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
	# echo 'Application running...'
	# export JENKINS_NODE_COOKIE='dontKillMe'
	# nohup 
	venv/bin/python main.py & >log.txt 2>errs.txt
	# sh pp.sh
restart: stop start
