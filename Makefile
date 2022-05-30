.DEFAULT_GOAL := build-all

export GO15VENDOREXPERIMENT=1

all: pb | build

build:
	@CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o bin/server src/server/main.go
	@CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o bin/client src/client/main.go

pb:
	@protoc -I ./proto ./proto/helloworld.proto --go_out=plugins=grpc:src/public

gopb:
	@protoc -I ./proto helloworld.proto --gofast_out=plugins=grpc:helloworld

clean:
	@echo "clear"
	rm -rf ./bin