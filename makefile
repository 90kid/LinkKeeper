.PHONY: build run stop clean shell install-dependencies

PROJECT_NAME=link-keeper

build:
	cp .env.example .env
	docker-compose build
	make install-dependencies

run:
	docker-compose up -d

stop:
	docker-compose down

clean:
	docker-compose down --rmi all

shell:
	docker-compose exec app sh

install-dependencies:
	docker-compose run --rm app npm install

generate-prisma:
	docker-compose run --rm app npx prisma generate

cs-fix:
	docker-compose run --rm app npx eslint .