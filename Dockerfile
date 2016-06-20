# FROM node
# RUN echo node -v

# RUN cd /tmp && npm install kerberos

FROM mhart/alpine-node

RUN apk add --update python
RUN apk add krb5 krb5-libs
RUN apk add gcc make g++
RUN apk add krb5-dev

RUN cd tmp && npm install kerberos && rm -rf node_modules
