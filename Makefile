FPM_CONTAINER = fpmDevOps1

up:
	docker compose up
build:
	docker compose build --no-cache
down:
	docker compose down
sh:
	docker exec -it $(FPM_CONTAINER) bash
#