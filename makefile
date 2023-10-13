PATH_YML = ./srcs/docker-compose.yml

all:
	sudo mkdir -p /home/amessah/data
	sudo mkdir -p /home/amessah/data/wordpress
	sudo mkdir -p /home/amessah/data/mariadb
	sudo docker-compose -f $(PATH_YML) up -d --build
	
re: clean all

stop:
	sudo docker-compose -f $(PATH_YML) stop

clean: stop
	sudo docker-compose -f $(PATH_YML) down -v

ps:
	docker-compose -f $(PATH_YML) ps

logs:
	docker-compose -f $(PATH_YML) logs

fclean: clean
	sudo rm -rf /home/amessah/data 
	sudo docker system prune -af
