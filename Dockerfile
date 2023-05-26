FROM ubuntu:22.10

# Install dependencies and clean up apt cache
RUN apt update && \
    apt install -y supervisor \
        ca-certificates && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash mytest
COPY --chown=mytest:mytest --chmod=755 report-generator /usr/local/bin/report-generator
ENTRYPOINT /usr/bin/supervisord --silent --nodaemon
