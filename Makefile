
default: run

run:
	@mkdir -p ./input
	@mkdir -p ./working/projects
	@docker-compose up --build -d

open:
	@open http://localhost:8080

stop:
	@docker-compose stop

.PHONY: run open stop
