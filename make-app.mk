USER = "$(shell id -u):$(shell id -g)"

app:
	docker-compose up

app-build:
	docker-compose build

app-bash:
	docker-compose run --user=$(USER) app bash

app-setup: development-setup-env app-build
	docker-compose run app bundle install

app-test:
	docker-compose run app bundle exec rspec

app-test-sut:
	docker-compose -f services/app/docker-compose.test.yml run sut
