FROM ubuntu:14.04
MAINTAINER David Bond <dave@dave-bond.com>

RUN apt-get update
RUN apt-get install -y python git-core

RUN git clone https://github.com/RuudBurger/CouchPotatoServer.git /couchserver

ADD ./run.sh /run.sh
RUN chmod u+x /run.sh

VOLUME /config
VOLUME /data

EXPOSE 5050

CMD ["./run.sh"]