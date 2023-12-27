This repo is a demo of Conluentic docker images for testing and learning. 

- The docker-compose.yaml file is copied from Examples at: https://github.com/confluentinc/cp-all-in-one
- Connect instance is created with Dockerfile where connectors are added 


docker-compose up --force-recreate
docker-compose up -d --force-recreate

# Delete all Containers
docker rm -f $(docker ps -a -q)

# Terminal
docker exec -it connect sh
docker exec -it broker sh

