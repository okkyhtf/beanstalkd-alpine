FROM alpine:3.7
LABEL maintainer="Okky Hendriansyah <okky.htf@gmail.com>"

RUN apk add --no-cache tini tzdata beanstalkd \
 && mkdir -p /data/binlog/

EXPOSE 11300
ENTRYPOINT ["/sbin/tini", "--"]
CMD ["beanstalkd", "-p", "11300", "-b", "/data/binlog/"]
