
up:
	sudo docker-compose up

down:
	sudo docker-compose down

define cmd =
	sudo docker stop \$(sudo docker ps -a -q); sudo docker rm \$(sudo docker ps -a -q); sudo docker rmi \$(sudo docker images -q); sudo docker volume rm \$(sudo docker volume ls -q)
endef

fclean: down
	-sh -c "$(value cmd)"

re: fclean up