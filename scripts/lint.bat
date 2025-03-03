@echo off
setlocal enabledelayedexpansion

:: move to project root
cd ..

echo [0;33m "Formatting (RUFF)..." [0m
ruff format ./!%PROJECT_NAME%! ./tests

echo [0;33m "Linting (RUFF)..." [0m
ruff check ./!%PROJECT_NAME%! ./tests -o .ruff.json --output-format json --fix --no-cache

:: too opinionated for linting tests
echo [0;33m "Linting (FLAKE8 PLUGINS)..." [0m
flake8 ./!%PROJECT_NAME%!

echo [0;33m "Finished Formatting & Linting
