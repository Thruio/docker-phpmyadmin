FROM yoshz/apache-php
MAINTAINER Yosh de Vos "yosh@elzorro.nl"

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -yq install phpmyadmin

ADD default-vhost.conf /etc/apache2/sites-available/000-default.conf
ADD config-db.php /etc/phpmyadmin/config-db.php

EXPOSE 80
CMD ["/usr/bin/supervisord"]
