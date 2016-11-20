FROM python:3.5.2

RUN pip install NumPy nengo nengo_gui

RUN apt-get update && apt-get install -y unzip

WORKDIR /opt

RUN wget -q -O spaun.zip wget http://23.83.228.127/weex/spaun_0.zip && unzip -o spaun.zip

WORK /opt/spaun

RUN chmod +x external/pseudoInverse && chmod +x nengo nengo-cl


#sh -c 'echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list
#sh -c 'echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list
#apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
#apt-get update && apt-get install -y oracle-java8-installer
FROM python:3.5.2

RUN pip install NumPy nengo nengo_gui

RUN apt-get update && apt-get install -y unzip

WORKDIR /opt

RUN wget -q -O spaun.zip wget http://23.83.228.127/weex/spaun_0.zip && unzip -o spaun.zip

WORK /opt/spaun

RUN chmod +x external/pseudoInverse && chmod +x nengo nengo-cl


#sh -c 'echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list
#sh -c 'echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list
#apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
#apt-get update && apt-get install -y oracle-java8-installer

