FROM nginx:alpine

# Install wget and install/updates certificates
RUN apk add --no-cache --virtual .run-deps \
    ca-certificates bash openssl \
    && update-ca-certificates

VOLUME ["/etc/nginx/certs", "/etc/nginx/dhparam", "/etc/nginx/conf.d", "/etc/nginx/vhost.d"]

COPY app/* /app/

COPY network_internal.conf /etc/nginx/
COPY additional_settings.conf /etc/nginx/conf.d/additional_settings.conf

ENTRYPOINT ["/app/docker-entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
