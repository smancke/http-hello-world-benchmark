FROM nginx

RUN echo "Hello World" > /usr/share/nginx/html/index.html && \
    sed -i 's/worker_processes.*1/worker_processes auto/' /etc/nginx/nginx.conf  && \
    ln -sf /dev/null /var/log/nginx/access.log &&\
    ln -sf /dev/null /var/log/nginx/error.log