FROM alpine:3.7
LABEL maintainer="Okky Hendriansyah <okky.htf@gmail.com>"

# beanstalkd v1.10-r0
RUN apk add --no-cache beanstalkd

EXPOSE 11300
CMD ["beanstalkd", "-p", "11300"]
