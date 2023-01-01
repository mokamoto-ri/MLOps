default: | help

.PHONY: test
test:
	poetry run pytest --cov -vv --cov-report xml

.PHONY: fmt-lnt
fmt-lnt:
	poetry run autoflake app
	poetry run isort app
	poetry run black app
	poetry run mypy app
	poetry run pflake8 app
