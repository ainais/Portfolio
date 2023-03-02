FROM nginx:latest
MAINTAINER ray <kou8148@naver.com>

ENV NGINX_CONF /etc/nginx/conf.d/default.conf

RUN rm /etc/nginx/conf.d/default.conf
RUN touch /etc/nginx/conf.d/default.conf
RUN echo "server{" >> $NGINX_CONF
RUN echo " listen   80;" >> $NGINX_CONF
RUN echo " server_name   localhost;" >> $NGINX_CONF
RUN echo " location / {" >> $NGINX_CONF
RUN echo " proxy_pass http://tomcat-service.default.svc.cluster.local;" >> $NGINX_CONF
RUN echo " index index.html index.htm;" >> $NGINX_CONF
RUN echo " } # end of location" >> $NGINX_CONF
RUN echo "} # end of server" >> $NGINX_CONF

CMD ["nginx", "daemon off;"]

EXPOSE 80
EXPOSE 443