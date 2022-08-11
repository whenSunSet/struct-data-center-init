sudo docker stop metabase && sudo docker rm metabase
sudo docker stop parseserver && sudo docker rm parseserver
sudo docker stop parseserver-mongo && sudo docker rm parseserver-mongo 
sudo docker stop parseserver-dashboard && sudo docker rm parseserver-dashboard
sudo docker-compose -f docker-compose.yml up -d
