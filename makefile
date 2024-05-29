-include ./.env

export $(shell sed 's/=.*//' ./.env)

# Project
export PROJECT := travkeep

# Commands
run-local-db:
	@echo "++\n***** Starting local database\n++"
	@docker-compose up -d db
	@echo "++\n*****"