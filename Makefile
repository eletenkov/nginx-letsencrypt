default: build

build:
	@docker-compose build 

run:
	@docker-compose up -d

logs:
	@docker-compose logs -f

push:
	@docker push eletenkov/nginx-letsencrypt:latest

rmi:
	@docker-compose down --rmi all