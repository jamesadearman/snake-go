# snake-go

Snake game in Go using Ebitengine.

## Setup

```bash
make setup-hooks
```

This installs the pre-commit hook that runs `make check` before every commit.

## Commands

```bash
make check       # run fmt, test, vet, lint, race
make build       # compile binary to bin/snake
make run         # run the game
make setup-hooks # install git pre-commit hook
```
