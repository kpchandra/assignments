FROM tomcat
RUN apt install pip -y
RUN copy tomcat-user.xml /etc/tomcat
ADD http://prdownloads.sourceforge.net/pebble/pebble-4.4.zip?download /
RUN cd / && unzip pebble-4.3
RUN copy pebble.war /pebble/result
ENTRYPOINT ["/usr/bin/python", "/tool/pebble.py"]
