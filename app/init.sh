#!/bin/sh
java -jar schemaSpy.jar -t pgsql -s public -db HealthTech -u postgres -p password -host postgredb -o /usr/share/nginx/html/healthtech -dp postgresql-jdbc4.jar
java -jar schemaSpy.jar -t pgsql -s public -db role_management -u postgres -p password -host postgredb -o /usr/share/nginx/html/role-management -dp postgresql-jdbc4.jar
nginx -g "daemon off;"
