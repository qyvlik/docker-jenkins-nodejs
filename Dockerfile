FROM jenkins/jenkins:lts

MAINTAINER "qyvlik@qq.com"

ENV NODE_VERSION 10.8.0

# Switch to root user
USER root

RUN curl -SLO "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION-linux-x64.tar.xz" \
  && tar -xJf "node-v$NODE_VERSION-linux-x64.tar.xz" -C /usr/local --strip-components=1 \
  && rm "node-v$NODE_VERSION-linux-x64.tar.xz" \
  && ln -s /usr/local/bin/node /usr/local/bin/nodejs --registry=https://registry.npm.taobao.org \
  && npm install bower -g --registry=https://registry.npm.taobao.org \
  && npm install gulp -g --registry=https://registry.npm.taobao.org

USER jenkins
