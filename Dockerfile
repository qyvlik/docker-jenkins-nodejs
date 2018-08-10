FROM jenkins/jenkins:lts

MAINTAINER "qyvlik@qq.com"

ENV NODE_VERSION 10.8.0

# Switch to root user
USER root

RUN cd / && \
  wget https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz && \
  tar -xvzf node-v${NODE_VERSION}-linux-x64.tar.gz && \
  rm -rf node-v${NODE_VERSION}-linux-x64.tar.gz && \
  mv node-v${NODE_VERSION}-linux-x64 /usr/local/bin && \
  echo 'export NODE_HOME=/usr/local/bin/node-v${NODE_VERSION}-linux-x64' >> /etc/profile && \
  echo 'export PATH=$PATH:${NODE_HOME}/bin' >> /etc/profile
  
USER jenkins
