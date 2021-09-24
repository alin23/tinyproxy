FROM vimagick/tinyproxy

ARG USER
ARG PASSWORD

COPY tinyproxy.conf /etc/tinyproxy/

RUN sed -i s/USER/$USER/g /etc/tinyproxy/tinyproxy.conf
RUN sed -i s/PASSWORD/$PASSWORD/g /etc/tinyproxy/tinyproxy.conf

EXPOSE 10028