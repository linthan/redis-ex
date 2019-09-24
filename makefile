.PHONY:run
run:
	docker-compose run --rm redis1 bash
.PHONY:attach
attach:
	docker-compose exec redis1 bash
