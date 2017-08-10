test:
	docker-compose run --rm php test

up: down
	docker-compose up -d

down:
	docker-compose down

pull:
	docker-compose pull

install: volumes/hodor volumes/hodor/vendor volumes/hodor/config/config.test.php

install-composer:
	docker-compose run --rm php install

install-config:
	docker-compose run --rm php install-test-docker

volumes/hodor:
	mkdir -p volumes
	cd volumes && \
		git clone git@github.com:lightster/hodor.git

volumes/hodor/vendor:
	$(MAKE) install-composer

volumes/hodor/config/config.test.php:
	$(MAKE) install-config
