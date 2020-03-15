FROM alpine:latest

LABEL "com.github.actions.name"="Hugo Actions"
LABEL "com.github.actions.description"="Commands to help with building Hugo based static sites"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="yellow"

LABEL "repository"="http://github.com/dpisarenko/hugo-action"
LABEL "homepage"="http://github.com/dpisarenko/hugo-action"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk update 
RUN apk add --no-cache hugo=0.65.3-r0 bash
RUN apk add --no-cache bash
RUN apk add --no-cache git 

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
