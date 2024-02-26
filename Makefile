
init:
	docker-compose up -d --build
destroy:
	docker-compose down --rmi all --volumes
remake:
	@make destroy
	@make init
up:
	docker-compose up -d
down:
	docker-compose down
restart:
	@make down
	@make up
build:
	docker-compose build --no-cache --force-rm
ps:
	docker-compose ps
logs:
	docker-compose logs
logs-watch:
	docker-compose logs --follow


app:
	docker-compose exec app bash
lint:
	docker-compose exec app npm run lint
