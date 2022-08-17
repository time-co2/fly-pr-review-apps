FROM alpine

RUN apk add --no-cache curl jq

RUN curl -L https://fly.io/install.sh | FLYCTL_INSTALL=/usr/local sh -s 0.0.372

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
