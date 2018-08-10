FROM jenkins/jenkins:lts

MAINTAINER "qyvlik@qq.com"

ENV NODE_VERSION 10.8

# Switch to root user
USER root

RUN cd ~/ && \
  wget https://nodejs.org/dist/v10.8.0/node-v10.8.0-linux-x64.tar.gz && \
  tar -xvzf node-v10.8.0-linux-x64.tar.gz && \
  echo 'export PATH=$PATH:/root/node-v10.8.0-linux-x64/bin' >> /etc/profile

USER jenkins
