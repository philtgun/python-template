# Python Template

* Includes personal selection of code quality tools and pre-commit hooks
* Uses line length of 120 for formatters and linters

# TODO
* Rename `mypackage` directory
* Update `pyproject.toml` with correct metadata
* Create `CHANGELOG.md` according to [KeepAChangelog.com](https://keepachangelog.com/) and start updating version in `__version__.py`

# Dev

```shell
python3.11 -m venv venv
source venv/bin/activate.fish
make initdev
```

## Commands from `Makefile`
* `make initdev` - install dev dependencies
* `make test` - run tests
* `make lint` - run linters
* `make format` - run formatters (runs in pre-commit hook)

# VSCode

Extra extensions: ruff, mypy, black, pytest
Make sure they are running `"fromEnvironment"`

Setting that I like to have that integrate VSCode with code quality tools
```json
{
    "files.autoSave": "onFocusChange",
    "[python]": {
        "editor.codeActionsOnSave": {
            "source.organizeImports": true
        },
        "editor.defaultFormatter": "ms-python.black-formatter",
    },
    "editor.rulers": [
        120
    ],
    "python.testing.pytestEnabled": true,
    "editor.formatOnSave": true,
    "mypy-type-checker.importStrategy": "fromEnvironment",
    "black-formatter.importStrategy": "fromEnvironment",
}
```

# Building and Publishing

See [GitHub Actions](https://docs.github.com/en/actions/automating-builds-and-tests/building-and-testing-python) for details

# Testing in GitHub Actions

TODO
