FROM nginx:stable-alpine

ADD conf/nginx.conf /etc/nginx/nginx.conf

ADD script/entrypoint.sh /sbin/entrypoint.sh
ADD script/letsencrypt.sh /letsencrypt.sh

RUN \
 rm /etc/nginx/conf.d/default.conf && \
 chmod +x /entrypoint.sh && \
 chmod +x /letsencrypt.sh && \
 apk add  --update certbot tzdata openssl && \
 rm -rf /var/cache/apk/*

CMD ["/sbin/entrypoint.sh"]
