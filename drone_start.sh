#/bin/bash
docker stop dronemysql drone
docker rm dronemysql drone

docker run -d -h dronemysql --name dronemysql --env-file=./mysql.env -p 3306:3306 mysql
echo "Sleeping 15 sec for mysql to initialize"
sleep 15
docker run -d -h drone      --name drone      --env-file=./drone.env -p 80:80 -t npateriyainsecure/drone
