FROM rabbitmq:management

MAINTAINER victorcf999@gmail.com

EXPOSE 5672 15672 1338 5556

ADD rabbitmq.config /etc/rabbitmq/

RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.config

# APT update, wget and sudo
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install apt-utils -y
RUN apt-get install wget -y
RUN apt-get install sudo -y
RUN apt-get install vim -y

#Install java 8
RUN apt-get update && \
	apt-get install -y openjdk-8-jdk && \
	apt-get install -y ant && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk8-installer;
	
RUN apt-get update && \
	apt-get install -y ca-certificates-java && \
	apt-get clean && \
	update-ca-certificates -f && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk8-installer;

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

# Install mule
WORKDIR /opt/
RUN wget https://repository-master.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/3.8.0/mule-standalone-3.8.0.tar.gz && echo "d9279b3f0373587715613341a16483f3 mule-standalone-3.8.0.tar.gz" | md5sum -c
RUN tar xvzf mule-standalone-3.8.0.tar.gz && rm mule-standalone-3.8.0.tar.gz && mkdir mule && sudo mv /opt/mule-standalone-3.8.0/* /opt/mule/

# Define environment variables.
ENV mule.home /opt/mule/
VOLUME ["/opt/mule/logs", "/opt/mule/conf", "/opt/mule/apps", "/opt/mule/domains"]

WORKDIR  /opt/mule/apps/
RUN sudo rm -r *
#RUN echo "Downloading latest middleware" && wget https://s3.amazonaws.com/hyperloopupv/middleware.zip
#COPY hyperloop-tcp-receiver-1.0.0-SNAPSHOT.zip middleware

WORKDIR  /opt/
COPY start.sh start.sh
RUN chmod +x start.sh
RUN sed -i -e 's/\r$//' start.sh

CMD [ "./start.sh" ]