
setup:
	python3 -m venv .udacity-devops
	source .udacity-devops/bin/activate

install:
	pip3 install --upgrade pip &&\
		pip3 install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb
	echo "Run test"

web-app:
	az webapp up --name loihuynh-ml-service --resource-group Azuredevops

all: install test
