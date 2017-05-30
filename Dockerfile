FROM python:alpine
MAINTAINER Johan Gunnarsson <johan@diversal.se>
VOLUME /tmp
ADD webserver.py /webserver.py
RUN sh -c 'touch /app.jar'
ENTRYPOINT ["/usr/local/bin/python","webserver.py"]
EXPOSE 5000
