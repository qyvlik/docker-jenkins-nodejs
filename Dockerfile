FROM jenkins/jenkins:lts

MAINTAINER "qyvlik@qq.com"

ENV NODE_VERSION 10.8.0

# Switch to root user
USER root

RUN cd / && \
  wget https://nodejs.org/dist/v${NODE_VERSION}/node-v${NODE_VERSION}-linux-x64.tar.gz && \
  tar -xvzf node-v${NODE_VERSION}-linux-x64.tar.gz && \
  rm -rf node-v{NODE_VERSION}-linux-x64.tar.gz && \
  echo 'export PATH=$PATH:/root/node-v{NODE_VERSION}-linux-x64/bin' >> /etc/profile && \
  source /etc/profile
  
USER jenkins

RUN cd ~ && \
  echo 'export PATH=$PATH:/usr/local/bin/node-v{NODE_VERSION}-linux-x64/bin' >> .profile \
  source .profile

#
