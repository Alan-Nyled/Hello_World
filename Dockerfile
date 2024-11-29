# Brug et letvægts-Nginx image som base
FROM nginx:alpine

# Kopier din HTML-fil til den standardmappe, Nginx serverer fra
COPY index.html /usr/share/nginx/html/

# Tilføj en egen default.conf-fil til Nginx, der dynamisk bruger $PORT
COPY default.conf /etc/nginx/conf.d/default.conf

# Eksponér den port, som Google Cloud Run vil bruge
EXPOSE 8080

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]

