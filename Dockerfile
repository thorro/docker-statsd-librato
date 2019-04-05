FROM node:8.15-stretch
MAINTAINER Andreas Lüdeke

ENV STATSD_VERSION=v0.8.2
ENV STATSD_LIBRATO_BACKEND_VERSION=2.0.16

RUN mkdir -p /opt/statsd && cd /opt/statsd
RUN curl -L https://github.com/etsy/statsd/archive/${STATSD_VERSION}.tar.gz | tar xvz --strip 1 -C /opt/statsd 
RUN npm install statsd-librato-backend@${STATSD_LIBRATO_BACKEND_VERSION}

ADD statsd-config.js /opt/statsd/config.js

CMD ["node", "/opt/statsd/stats.js",  "/opt/statsd/config.js"]
