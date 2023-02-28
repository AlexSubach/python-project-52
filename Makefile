install:
	poetry install
test:
	poetry run pytest
test-cov:
	poetry run pytest --cov
test-coverage:
	poetry run pytest --cov=task_manager --cov-report xml
lint:
	poetry run flake8 .
check:
	poetry check
build:
	poetry build
start:
	poetry run python manage.py runserver
migrate:
	poetry run python manage.py migrate
req:
	poetry export -f requirements.txt --output requirements.txt