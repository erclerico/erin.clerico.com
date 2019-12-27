# Use a stock Docksal image as the base
FROM docksal/cli:2.1-php7.1

# Install hugo 0.62
RUN wget -q https://github.com/gohugoio/hugo/releases/download/v0.62.0/hugo_extended_0.62.0_Linux-64bit.deb -O /tmp/hugo.deb \
    && dpkg -i /tmp/hugo.deb