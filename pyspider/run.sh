sudo docker stop pyspider && docker rm pyspider
sudo docker-compose -f docker-compose.yml up -d
sudo docker exec -itd pyspider /bin/zsh
