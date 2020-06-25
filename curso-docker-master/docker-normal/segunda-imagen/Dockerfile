FROM nginx

RUN useradd plerzundi

COPY fruit /usr/share/nginx/html

ENV archivo docker

WORKDIR /usr/share/nginx/html

RUN echo "$archivo" > /usr/share/nginx/html/env.html

EXPOSE 90

LABEL version=1

USER plerzundi

RUN echo "yo soy $(whoami)" > /tmp/who.html

USER root

RUN cp /tmp/who.html /usr/share/nginx/html/docker.html

VOLUME /var/log/nginx

CMD nginx -g 'daemon off;'