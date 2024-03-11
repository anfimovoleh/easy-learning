go-build:
	go build -o easy-learning -v ./cmd/

go-run:
	./easy-learning

docker-build:
	docker build -t easy-learning:latest -f build/Dockerfile .
