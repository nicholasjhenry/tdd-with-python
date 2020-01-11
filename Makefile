app.server:
	docker-compose exec application python manage.py migrate
	docker-compose exec application python manage.py runserver 0.0.0.0:8000

docker.bash:
	docker-compose exec application bash

docker.build:
	docker-compose down --volume
	docker-compose build --force-rm
	docker-compose up --detach
	docker-compose exec application pipenv install --dev

docker.up:
	docker-compose up --detach  

docker.stop:
	docker-compose stop

test.functional:
	docker-compose exec application python manage.py test functional_tests

test.unit:
	docker-compose exec application python manage.py test lists