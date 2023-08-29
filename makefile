PATH_YML = ./srcs/docker-compose.yml
# HOME_PATH = /home/mprigent/

all:
	@mkdir -p ~/amessah/data
	@mkdir -p ~/amessah/data/wordpress
	@mkdir -p ~/amessah/data/mariadb
	@sudo docker-compose -f $(PATH_YML) up -d --build

re: clean all

stop:
	@sudo docker-compose -f $(PATH_YML) stop

clean: stop
	@sudo docker-compose -f $(PATH_YML) down -v

fclean: clean
	@sudo rm -rf ~/amessah/data/wordpress
	@sudo rm -rf ~/amessah/data/mariadb
	@sudo docker system prune -af