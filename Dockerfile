FROM ubuntu:precise
MAINTAINER Jean-Luc Trojahn "https://github.com/jeanluc162"

ENV USER root

ENV PASS password

ENV PATH $PATH:/opt/dell/srvadmin/bin:/opt/dell/srvadmin/sbin

ENV TOMCATCFG /opt/dell/srvadmin/lib64/openmanage/apache-tomcat/conf/server.xml

COPY sources.list /etc/apt/sources.list

RUN apt-get update && apt-get upgrade -y && apt-get install -y snmpd build-essential apt-transport-https ca-certificates

COPY linux.dell.com.sources.list /etc/apt/sources.list.d/linux.dell.com.sources.list

RUN gpg --keyserver keyserver.ubuntu.com --recv-key 1285491434D8786F && gpg -a --export 1285491434D8786F | apt-key add - && apt-get update && apt-get install -y srvadmin-all

CMD echo "$USER:$PASS" | chpasswd ; \
    service dataeng start ; \
    service dsm_om_connsvc start ; \
    tail -f /dev/null

WORKDIR /opt/dell/srvadmin/bin