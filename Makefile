setup:
	python3 -m venv ~/.dockerproj
	
install:
	pip install  --upgrade pip  &&\
		pip install -r requirements.txt 


	
test:
	#@python -m pytest -vv --cov=myreolib tests*.py
	#@cd tests; pytest -vv --cov-report term-missing --cov=web --cov=nlib test_*.py
	
	
validate-circleci:
	# See https://circleci.com/docs/2.0/local-cli/#processing-a-config
	circleci config process .circleci/config.yml

run-circleci-local:
	# See https://circleci.com/docs/2.0/local-cli/#running-a-job
	circleci local execute
	

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1203 app.py


all: install lint test