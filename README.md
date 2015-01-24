# drone-docker
Docker file for drone CI. This is tmp repository will be deleted soon. 

- Run drone_start.sh on any host with docker running on 2375 port
- Starts mysql container with drone db for drone. Refer drone.env for env variable passed to mysql container.  
- Starts drone and configures it to connect mysql on 172.17.42.1:3306 and worker on 172.17.42.1:2375.
- Note gateway ip for docker is currently hardcoded so may not work in you setup if it gets diff ip


