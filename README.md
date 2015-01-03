phpmyadmin docker image
=======================

A Docker image for running phpmyadmin.

Configuration
-------------

Use the following environment variabeles to configure the database settings:

* *DB_HOST*: database hostname
* *DB_PORT*: database portnumber
* *DB_USER*: database user
* *DB_PASSWORD*: database password

When a mysql/mariadb container is linked at port 3306 with alias "db" all the variabeles 
are automatically configured.
