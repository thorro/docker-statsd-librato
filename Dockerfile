FROM node:0.12.9
MAINTAINER Andreas Lüdeke

RUN mkdir -p /opt/statsd && cd /opt/statsd
RUN curl -L https://github.com/etsy/statsd/archive/v0.7.2.tar.gz | tar xvz --strip 1 -C /opt/statsd 
RUN npm install statsd-librato-backend@0.1.7

ADD statsd-config.js /opt/statsd/config.js

CMD ["node", "/opt/statsd/stats.js",  "/opt/statsd/config.js"]
