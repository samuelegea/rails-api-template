.PHONY: bundle server down build migrate seed db_create db_reset test 

bundle:
	docker compose exec web bundle install
up:
	docker compose up;
console:
	docker compose exec web bundle exec rails c;
down:
	docker compose down;
build:
	docker compose up --build;
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
rubocop:
	docker compose run --rm backend bundle exec rubocop
backend:
	docker compose run --rm backend $(CMD)
