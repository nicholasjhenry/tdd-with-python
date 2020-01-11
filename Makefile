app.server:
	docker-compose exec application python manage.py migrate
	docker-compose exec application python manage.py runserver 0.0.0.0:8000

deps.install:
	docker-compose exec application pipenv lock
	docker-compose exec application pipenv install --dev

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

heroku.setup:
	git remote add heroku https://git.heroku.com/civilcode-superlists.git

heroku.deploy:
	git push heroku master

secret.generate:
	docker-compose exec application python -c "from django.core.management.utils import get_random_secret_key; print(get_random_secret_key())"

test.functional:
	docker-compose exec application python manage.py test functional_tests

test.functional.staging:
	docker-compose exec -e STAGING_SERVER=civilcode-superlists.herokuapp.com application python manage.py test functional_tests

test.unit:
	docker-compose exec application python manage.py test lists