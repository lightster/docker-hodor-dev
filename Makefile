test:
	docker-compose run --rm php test

up: down
	docker-compose up -d

down:
	docker-compose down

pull:
	docker-compose pull
