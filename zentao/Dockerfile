FROM ubuntu:14.04.2

COPY sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y wget

RUN apt-get install -y php5 php5-cgi php5-cli php5-common php5-curl php5-json php5-ldap php5-mysql php5-dev  php-pear
RUN pecl install pdo_mysql
RUN apt-get install -y mysql-client-5.6 mysql-common-5.6 mysql-client-core-5.6  mysql-server-5.6  mysql-server-core-5.6

WORKDIR /opt
RUN wget -q -O zentao.tar.gz http://dl.cnezsoft.com/zentao/8.2.6/ZenTaoPMS.8.2.6.zbox_64.tar.gz
RUN tar -zxvf zentao.tar.gz
EXPOSE 80
