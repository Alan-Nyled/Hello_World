FROM nginx:alpine

# Kopier HTML-filen til standard-webservermappen
COPY index.html /usr/share/nginx/html/

# Kopier default.conf til Nginx-konfigurationen
COPY default.conf /etc/nginx/conf.d/default.conf

# Eksponer porten (valgfrit for dokumentation)
EXPOSE 8080

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

