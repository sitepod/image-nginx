FROM alpine:3.1

RUN apk add --update nginx ca-certificates \
  && rm -rf /var/cache/apk/* 

COPY ./launch.sh /

RUN ln -sf /dev/stdout /var/log/nginx/access.log \
  && ln -sf /dev/stderr /var/log/nginx/error.log

ENTRYPOINT ["/launch.sh"]

CMD ["/usr/sbin/nginx","-g","daemon off;"]
