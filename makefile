.PHONY:run
run:
	docker-compose run --rm redis-sentinel bash
.PHONY:attach
attach:
	docker-compose exec redis-sentinel bash
