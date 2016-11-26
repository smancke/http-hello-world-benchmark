FROM nginx

RUN echo "Hello World" > /usr/share/nginx/html/index.html && \
    ln -sf /dev/null /var/log/nginx/access.log &&\
    ln -sf /dev/null /var/log/nginx/error.log