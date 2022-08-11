cd pyspider
sudo sh run.sh

cd ../ParseServer
sudo sh run.sh

cd ../MetaBase
sudo rm -rf data/db
sudo sh run.sh

cd ../n8n
sudo sh run.sh

cd ../selenium
sudo sh run.sh
