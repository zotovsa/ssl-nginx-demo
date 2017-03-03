FROM nginx
COPY dist /usr/share/nginx/html
COPY nginx-config.conf /etc/nginx/nginx.conf
COPY nginx.crt /etc/nginx
COPY nginx.key /etc/nginx
RUN chgrp -R 0 /var/cache/nginx && chmod -R g+rwX /var/cache/nginx
EXPOSE 80 443