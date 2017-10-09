FROM centos:6.6
MAINTAINER Jack Sparrow(Amit setia)

#Installing epel Repo,mongodb-server and some packages
RUN rpm -iU http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm &&  yum -y install mongodb-server java-1.7.0 wget tar &&  mkdir -p /data/db && \
               yum -y clean all

#Installing python2.7 in centos
RUN yum install -y gcc && \
    cd /usr/src && \
    wget https://www.python.org/ftp/python/2.7.13/Python-2.7.13.tgz && \
    tar xzf Python-2.7.13.tgz && \
    cd Python-2.7.13 && \
    ./configure && \
    make altinstall && \
    alias python=/usr/local/bin/python2.7 && \
    rm -rf /usr/src/Python-2.7.13.tgz


# Download Apache Tomcat 7
RUN cd /tmp;wget http://www-us.apache.org/dist/tomcat/tomcat-7/v7.0.82/bin/apache-tomcat-7.0.82.tar.gz

#Extracting the tomcat package
RUN cd /tmp;tar xzvf apache-tomcat-7.0.82.tar.gz 
RUN cd /tmp;mv apache-tomcat-7.0.82 /opt/tomcat7 && chmod -R 755 /opt/tomcat7 && rm -rf /tmp/apache-tomcat-7.0.82.tar.gz

#change into the working directory from where the tomcat server will be started
WORKDIR /opt/tomcat7/bin/

#Opening the 8080 tomcat port
EXPOSE 8080 

CMD ["./catalina.sh", "run"]
