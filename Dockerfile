FROM node:alpine

RUN apk --no-cache add \
    ca-certificates \
    wget \
    bash \
    curl \
    tar \
    gnupg \
    python \
    build-base

RUN wget https://yarnpkg.com/install.sh \
    && chmod +x install.sh \
    && ./install.sh \
    && rm install.sh

RUN apk --no-cache del \
    ca-certificates \
    wget \
    bash \
    curl \
    tar \
    gnupg

RUN rm -rf /root/.gnupg

ENV PATH /root/.yarn/bin:$PATH

