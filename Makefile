.PHONY: install start lint

install:
	uv sync --locked

start:
	uv run --locked python -m eta_trace

lint:
	uv run --locked ruff format .
	uv run --locked ruff check .
