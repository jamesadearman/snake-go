.PHONY: fmt test vet lint race check install run build setup-hooks

install:
	go mod tidy
	go mod vendor

setup-hooks:
	mkdir -p .git/hooks
	cp scripts/pre-commit .git/hooks/pre-commit
	chmod +x .git/hooks/pre-commit

fmt:
	gofmt -w .

test:
	go test ./...

vet:
	go vet ./...

lint:
	golangci-lint run

race:
	go test -race ./...

check: fmt test vet lint race

# Build binary for host OS (override with GOOS=windows/linux/darwin)
build:
	go build -o bin/snake ./cmd/snake

# Run the game (override with GOOS=windows/linux/darwin)
run:
	go run ./cmd/snake
