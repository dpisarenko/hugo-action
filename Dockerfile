FROM alpine:latest

LABEL "com.github.actions.name"="Hugo Actions"
LABEL "com.github.actions.description"="Commands to help with building Hugo based static sites"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="http://github.com/dpisarenko/hugo-actions"
LABEL "homepage"="http://github.com/dpisarenko/hugo-actions"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk update 
RUN apk add --no-cache hugo=0.65.3-r0 bash

RUN git clone --branch prod https://github.com/dpisarenko/hugo-wp-site.git /hugo

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
