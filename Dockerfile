#my firest autobuild dockfile
#2018-05-27
FROM ubuntu
RUN apt-get update 
RUN apt-get install -y  apache2 
RUN echo '<h1>hello, I am the first image builed by dockerfile!</h1> ' > /var/www/html/index.html
#ENTRYPOINT [ "/usr/sbin/apache2ctl" ]  
#CMD ["-D", "FOREGROUND"]  
ENTRYPOINT ["/usr/sbin/apache2ctl","-D","FOREGROUND"] 
#CMD ["/usr/sbin/apache2ctl","-D FOREGROUND"]
#CMD ["/bin/bash", "-l"]
EXPOSE 80
