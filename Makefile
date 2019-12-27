docker.bash:
	docker-compose exec application bash

docker.build:
	docker-compose build --force-rm

docker.up:
	docker-compose up --detach  

docker.stop:
	docker-compose stop