FROM openjdk:8-jdk

RUN apt-get update

RUN apt-get install nginx -y

RUN wget https://github.com/schemaspy/schemaspy/releases/download/v6.2.4/schemaspy-6.2.4.jar -O schemaSpy.jar

RUN wget https://jdbc.postgresql.org/download/postgresql-42.7.3.jar -O postgresql-jdbc4.jar

RUN apt-get install graphviz -y

RUN rm -v /etc/nginx/nginx.conf

RUN useradd --no-create-home nginx

COPY app/conf/nginx.conf /etc/nginx

COPY app/index.html /usr/share/nginx/html

COPY app/init.sh /bin

RUN chmod a+x /bin/init.sh

CMD ["/bin/init.sh"]
