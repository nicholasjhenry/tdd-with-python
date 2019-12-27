app.server:
	docker-compose exec application python manage.py runserver 0.0.0.0:8000

docker.bash:
	docker-compose exec application bash

docker.build:
	docker-compose build --force-rm
	docker-compose up --detach
	docker-compose exec application pip install -r requirements.txt --user

docker.up:
	docker-compose up --detach  

docker.stop:
	docker-compose stop