install-hooks:
	uv run pre-commit install

develop:
	uv pip install --no-deps -e .

build:
	uv build

lint:
	uv run ruff check .
	uv run ruff format --check .
	uv run mypy libpypostal/ tests/

format:
	uv run ruff check --fix .
	uv run ruff format .

test:
	uv run pytest tests/ -v -n auto
