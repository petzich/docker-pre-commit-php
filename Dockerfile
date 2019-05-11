FROM petzi/pre-commit:1.15.2-9
RUN apk add --no-cache \
    php7-pear \
    php7-openssl \
    php7-simplexml \
    php7-tokenizer \
    php7-xmlwriter
RUN pear channel-update pear.php.net
RUN pear install --onlyreqdeps PHP_CodeSniffer
COPY .pre-commit-config.yaml /
