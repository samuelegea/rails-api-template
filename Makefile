.PHONY: bundle server down build migrate seed db_create db_reset test 

bundle:
	docker compose run --rm backend bundle install
up:
	docker compose up;
console:
	docker compose run --rm backend bundle exec rails c;
routes:
	docker compose run --rm backend bundle exec rails routes;
up_build:
	docker compose up --build
down:
	docker compose down;
build:
	docker compose build --no-cache;
migrate:
	docker compose run --rm backend bundle exec rake db:migrate;
rollback:
	docker compose run --rm backend bundle exec rake db:rollback;
seed: 
	docker compose run --rm backend bundle exec rake db:seed;
db_create:
	docker compose run --rm backend bundle exec rake db:create;
db_reset:
	docker compose run --rm backend bundle exec rake db:drop db:create db:migrate db:seed;
test:
	docker compose run --rm backend bundle exec rspec
rubo:
	docker compose run --rm backend bundle exec rubocop
rubofix:
	docker compose run --rm backend bundle exec rubocop -x
back:
	docker compose run --rm backend $(CMD)
front: 
	docker compose run --rm frontend $(CMD)
