FROM rocker/shiny:4.0.3

RUN install2.r \
    --error \
    dplyr

COPY . /srv/shiny-server/shiny-gcr-tf/
COPY templates/shiny-server.conf /etc/shiny-server/shiny-server.conf

RUN chmod -R 777 /srv/shiny-server/