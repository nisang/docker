FROM tomcat:8.0.36-jre8
RUN mkdir -p /opt
WORKDIR /opt
COPY run.sh /opt/run.sh
RUN chmod +x run.sh
RUN wget -q -O zookeeper.tar.gz http://mirrors.aliyun.com/apache/zookeeper/zookeeper-3.4.8/zookeeper-3.4.8.tar.gz
RUN tar -zxvf zookeeper.tar.gz && cp /opt/zookeeper-3.4.8/conf/zoo_sample.cfg /opt/zookeeper-3.4.8/conf/zoo.cfg
#RUN sh zookeeper-3.4.8/bin/zkServer.sh start
RUN wget -q -O dubbo-admin.war http://192.168.7.130/dubbo-admin.war
WORKDIR /usr/local/tomcat
RUN rm -rf webapps/* && mkdir -p webapps/ROOT
RUN unzip /opt/dubbo-admin.war -d webapps/ROOT/
WORKDIR /opt
CMD ["sh","run.sh"]
