FROM ubuntu
ENV  DRONE_SERVER_PORT :80

RUN apt-get update
RUN apt-get -y install zip libsqlite3-dev sqlite3 lsb-release wget mysql-client 1> /dev/null 2> /dev/null
RUN wget downloads.drone.io/master/drone.deb
RUN dpkg -i drone.deb
RUN echo "$(route | grep default | awk '{print $2}') dockerhost" >>  /etc/hosts

EXPOSE 80
ENTRYPOINT ["/usr/local/bin/droned"]
