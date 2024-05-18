build:
	@go build -o bin/ecom cmd/main.go

run: build
	./bin/ecom

image:
	docker build -t gojwtmysql .

compose:
	docker compose up -d --build
  