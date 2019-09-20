init:
	git clone git@github.com:lobsters/lobsters.git

console:
	docker-compose exec lobsters rails console

shell:
	docker-compose exec lobsters bash

mysql:
	docker-compose exec mysql mysql -p
