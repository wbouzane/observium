FROM ubuntu
MAINTAINER William Bouzane <williambouzane@gmail.com>

RUN apt-get update && apt-get -y upgrade

RUN apt-get -y install libapache2-mod-php5 php5-cli php5-mysql php5-gd php5-snmp php-pear snmp graphviz php5-mcrypt php5-json subversion mysql-server mysql-client rrdtool fping imagemagick whois mtr-tiny nmap ipmitool python-mysqldb

RUN mkdir -p /opt/observium

RUN cd /opt && wget http://www.observium.org/observium-community-latest.tar.gz

RUN cd /opt && tar zxvf observium-community-latest.tar.gz
