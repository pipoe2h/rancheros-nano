FROM alpine

LABEL maintainer Jose Gomez <pipoe2h@gmail.com>

RUN apk --update add nano && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

VOLUME /nano
WORKDIR /nano

ENTRYPOINT ["nano"]
CMD ["--help"]