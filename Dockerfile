FROM alpine:3.20

RUN apk add --no-cache nginx
RUN addgroup -S app
RUN adduser -S -G app app

RUN mkdir -p /var/www/html
RUN mkdir -p /var/lib/nginx/tmp /var/lib/nginx/logs
RUN chown -R app:app /var/www/html /var/lib/nginx

EXPOSE 8080

USER app

CMD ["nginx", "-e", "/dev/stderr", "-g", "daemon off;"]
