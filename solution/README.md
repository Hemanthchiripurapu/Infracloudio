# PART-1

docker run -d --name csvserver infracloudio/csvserver:latest

### As i am using Arm-macbook
docker run -d --name csvserver --platform linux/amd64 infracloudio/csvserver:latest  

docker ps -a

docker logs csvserver

vi gencsv.sh

chmod +x gencsv.sh

./gencsv.sh 2 8

docker run -d --name csvserver --platform linux/amd64 -v $(pwd)/inputFile:/csvserver/inputdata infracloudio/csvserver:latest

docker exec -it csvserver /bin/sh

netstat -tuln | grep LISTEN

docker run -d --name csvserver --platform linux/amd -v $(pwd)/inputFile:/csvserver/inputdata -p 9393:9300 -e CSVSERVER_BORDER="Orange" infracloudio/csvserver:latest


