FROM alpine:3.7
LABEL maintainer="Okky Hendriansyah <okky.htf@gmail.com>"

RUN apk add --no-cache beanstalkd

EXPOSE 11300
CMD ["beanstalkd", "-p", "11300"]
