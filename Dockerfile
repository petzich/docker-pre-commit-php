FROM petzi/pre-commit:1.15.2-7
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    php-codesniffer \
    && rm -rf /var/lib/apt/lists/*
COPY .pre-commit-config.yaml /
