#Docker image inluding statsd and the librato statsd backend

Docker image which starts a statsd daemon and forwards data to librato.com  

contains the following software:  

node 0.12.9  
statsd 0.7.2  
statsd-librato-backend 0.1.7

#Run as docker image
'''docker run -d -p 8125:8125/udp -e LIBRATO_EMAIL=your@mail.com -e LIBRATO_TOKEN=yourToken f0b66e7e7581a7a59d3c --name librato aluedeke/docker-statsd-librato  

librato config can be provided via env variables:  
LIBRATO_EMAIL -- your users email (required)  
LIBRATO_TOKEN -- librato token (required)  
LIBRATO_SOURCE -- source tag (optional)  

statsd port can be set via env variable:  
STATSD_PORT -- stasd port (optional)  
