PATH_YML = ./srcs/docker-compose.yml
# HOME_PATH = /home/mprigent/

all:
	#@mkdir -p /home/kali/data
	#@mkdir -p /home/kali/data/wordpress
	#@mkdir -p /home/kali/data/mariadb
	@mkdir -p /Users/amessah/data
	@mkdir -p /Users/amessah/data/wordpress
	@mkdir -p /Users/amessah/data/mariadb
	# @sudo docker-compose -f $(PATH_YML) up -d --build
	@docker-compose -f $(PATH_YML) up -d --build

re: clean all

stop:
	# @sudo ÷docker-compose -f $(PATH_YML) stop
	@docker-compose -f $(PATH_YML) stop

clean: stop
	# @sudo docker-compose -f $(PATH_YML) down -v
	@docker-compose -f $(PATH_YML) down -v
ps:
	docker-compose -f $(PATH_YML) ps

logs:
	docker-compose -f $(PATH_YML) logs

fclean: clean
	# @sudo rm -rf /home/kali/data 
	# @sudo docker system prune -af
	@rm -rf /Users/amessah/data
	@docker system prune -af --all --volumes
