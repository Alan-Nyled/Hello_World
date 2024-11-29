FROM nginx:alpine

# Kopier HTML-filen til Nginx's webservermappe
COPY index.html /usr/share/nginx/html/

# Kopier default.conf til Nginx-konfigurationsmappen
COPY default.conf /etc/nginx/conf.d/default.conf

# Eksponer porten 8080 (kun dokumentation)
EXPOSE 8080

# Brug envsubst til at erstatte ${PORT} og start Nginx
CMD ["sh", "-c", "envsubst < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]



