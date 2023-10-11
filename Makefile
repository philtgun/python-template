.PHONY: format
format:
	black .

.PHONY: lint
lint:
	ruff .
	mypy .

.PHONY: test
test:
	pytest .

.PHONY: initdev
initdev:
	pip install --upgrade pip
	pip install -e .[dev,test]
	pre-commit install

.PHONY: all
all: format lint test
