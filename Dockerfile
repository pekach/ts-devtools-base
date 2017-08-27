FROM alpine:edge

COPY /sbin/cleanup /usr/local/sbin/cleanup

# Update
RUN echo "http://nl.alpinelinux.org/alpine/edge/testing" \
    >> /etc/apk/repositories \
    && echo "http://nl.alpinelinux.org/alpine/edge/community" \
    >> /etc/apk/repositories \
    && apk --no-cache upgrade \
    && cleanup

RUN apk --no-cache add \
    bash \
    coreutils \
    curl \
    dbus \
    firefox \
    git \
    libsass \
    nodejs-current-npm \
    wget \
    xvfb \
    && npm -g config set user root \
    && apk --no-cache add --virtual build-deps \
    build-base \
    libsass-dev \
    python2-dev \
    && npm install -g @angular/cli \
    && apk del build-deps \
    && cleanup

ENV DISPLAY=:0
