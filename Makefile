
docker/build:
	docker build --network=host -t talk-booking -f ./ci_cd/python/Dockerfile .

docker/run:
	docker run -d --network=host --name talk-booking talk-booking bash -c "sleep infinity"

docker/flake:
	docker exec talk-booking bash -c "cd talk_booking && poetry run flake8 . -v"

docker/black:
	docker exec talk-booking bash -c "cd talk_booking && poetry run black . --check"

docker/isort:
	docker exec talk-booking bash -c "cd talk_booking && poetry run isort . --check-only --profile black"

docker/bandit:
	docker exec talk-booking bash -c "cd talk_booking && poetry run bandit . "

docker/safety:
	docker exec talk-booking bash -c "cd talk_booking && poetry run safety check"
