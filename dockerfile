FROM devopsedu/webapp

RUN apt-get update && \
    apt-get install -y php5-mysql && \
    apt-get clean

COPY /home/ubuntu/FinalProj/website/ /var/www/