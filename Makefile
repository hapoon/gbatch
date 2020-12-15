.PHONY: run test build docker-build

run:
	go run main.go

build:
	go build -o bin/gbatch main.go

docker-build:
	docker build -t hapoon/gbatch:latest .
