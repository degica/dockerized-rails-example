build:
	docker-compose build
spring: build
	docker-compose up -d spring
setup: build spring
	docker-compose up -d db
	sleep 5
	docker-compose run web bin/setup
up: spring
	docker-compose up
