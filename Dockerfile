FROM alpine:latest
MAINTAINER ERC <erin@clerico.com>
RUN apk update
RUN apk add --no-cache \
    curl \
    git \
    openssh-client \
    rsync \
    python \
    py-pip \
    groff \
    less \
    mailcap \
    imagemagick \
    bash \
    pngcrush \
    optipng=0.7.7-r0
ENV VERSION 0.62.0
RUN mkdir -p /usr/local/src \
    && cd /usr/local/src \
    && curl -L https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_${VERSION}_linux-64bit.tar.gz | tar -xz \
    && mv hugo /usr/local/bin/hugo \
    && curl -L https://bin.equinox.io/c/dhgbqpS8Bvy/minify-stable-linux-amd64.tgz | tar -xz \
    && mv minify /usr/local/bin/ \
    && addgroup -Sg 1000 hugo \
    && adduser -SG hugo -u 1000 -h /src hugo \
    && pip install --upgrade awscli==1.16.206 s3cmd==2.0.2 python-magic && \
    apk -v --purge del py-pip
WORKDIR /src
# ENTRYPOINT ["aws", "--version"]
EXPOSE 1313