FROM alpine:latest

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && apk update && apk add bash curl net-tools iputils vim openssh-client openssh python3 ruby
RUN mkdir -p /root/.ssh
ADD run.rb /run.rb

COPY python3.dm8.tar.gz /

CMD ["ruby", "run.rb"]
EXPOSE 22