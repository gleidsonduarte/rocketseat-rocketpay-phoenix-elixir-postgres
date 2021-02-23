.PHONY: up down

up:
	@docker-compose up -d --build && \
	sudo chmod 777 -R ./_build/dev/lib/

down:
	@docker-compose down

rocketpay:
	docker exec -it rocketpay bash

rocketpay-logs:
	docker logs -f rocketpay
