FROM alpine:3.5
RUN apk add --no-cache --virtual .build-deps ca-certificates curl openssl-dev build-base zlib-dev git
ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
CMD /configure.sh
