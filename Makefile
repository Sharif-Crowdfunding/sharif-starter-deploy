run:
	docker-compose up --no-deps --build
start:
	docker-compose up
build:
	rm -rf ./back
	git clone https://github.com/Sharif-Crowdfunding/sharif-starter-backend.git ./back
	rm -rf ./nginx/app
	git clone https://github.com/Sharif-Crowdfunding/sharif-starter.git ./nginx/app
	docker-compose up --no-deps --build
stop:
	docker-compose stop
clean:
	docker-compose down -v --rmi local --remove-orphans
