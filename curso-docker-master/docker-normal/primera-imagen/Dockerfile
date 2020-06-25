FROM centos
LABEL version=1.0
LABEL description="This is an apache image"
LABEL vendor="Patricio Lerzundi"
RUN yum install httpd -y
WORKDIR /var/www/html
COPY beryllium .
ENV contenido prueba
RUN  echo "$contenido" > /var/www/html/prueba.html
RUN echo "$(whoami)" >  /var/www/html/usuario1.html
RUN useradd plerzundi
RUN chown plerzundi /var/www/html -R
USER plerzundi
RUN echo "$(whoami)" > /var/www/html/usuario2.html
USER root
COPY run.sh /run.sh
CMD sh /run.sh
#CMD apachectl -DFOREGROUND
