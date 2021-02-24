.PHONY: up down

up:
	@docker-compose up -d --build && \
	@sudo chmod 777 -R ./_build/dev/lib
	
migrate:
	@sudo chmod 777 -R _build/dev/lib && \
	mix do ecto.create, ecto.migrate

down:
	@docker-compose down

rocketpay:
	docker exec -it rocketpay bash

rocketpay-logs:
	docker logs -f rocketpay
