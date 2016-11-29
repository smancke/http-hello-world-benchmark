FROM debian:jessie

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
        apache2 mksh && \
    ln -sf lksh /bin/sh && \
    a2enmod cgi && \
    apt-get clean

COPY hello.cgi /usr/lib/cgi-bin/hello.cgi
RUN chown 0:0 /usr/lib/cgi-bin/hello.cgi && chmod 755 /usr/lib/cgi-bin/hello.cgi

EXPOSE 80

CMD ["/usr/bin/env", "-i", "LC_ALL=C", \
    "PATH=/usr/sbin:/usr/bin:/sbin:/bin", \
    "APACHE_RUN_USER=www-data", "APACHE_RUN_GROUP=www-data", \
    "APACHE_RUN_DIR=/var/run/apache2", \
    "APACHE_LOCK_DIR=/var/lock/apache2", "APACHE_LOG_DIR=/var/log/apache2", \
    "APACHE_PID_FILE=/var/run/apache2/apache2.pid", \
    "/usr/sbin/apache2", "-DFOREGROUND", "-k", "start"]
