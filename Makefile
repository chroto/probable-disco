build:
	@echo 'Starting build process'
	@docker build . --tag probable-disco/report-generator:latest

run: build
	@echo 'Running container...'
	@docker run --detach --name report-generator probable-disco/report-generator:latest

shell:
	@echo 'Starting shell on running container `report-generator`'
	@docker exec --workdir /usr/bin --user mytest -it report-generator /bin/bash

report:
	@docker exec --workdir /usr/bin --user mytest -it report-generator report-generator
	@docker exec --workdir /usr/bin --user mytest -it report-generator cat /tmp/final-report.txt

stop:
	@echo 'Stopping docker container `report-generator`'
	@docker stop report-generator

restart:
	@docker start report-generator

clean: stop
	@echo 'Removing docker resources...'
	@docker rm report-generator
	@docker image rm probable-disco/report-generator:latest
	
all: run report clean

.PHONY: build run clean stop restart clean shell report all

