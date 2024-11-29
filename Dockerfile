FROM nginx:alpine

# Kopier HTML-filen til Nginx's webservermappe
COPY index.html /usr/share/nginx/html/

# Kopier default.conf til Nginx-konfigurationen
COPY default.conf /etc/nginx/conf.d/default.conf

# Eksponer port 8080 (kun dokumentation)
EXPOSE 8080

# Erstat miljøvariablen PORT i default.conf og start Nginx
CMD ["sh", "-c", "envsubst < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]


