FROM nginx:alpine

# Copy the HTML file to the Nginx default folder
COPY index.html /usr/share/nginx/html/

# Expose port 8080 (Cloud Run's default port)
EXPOSE 8080

# Override Nginx configuration to listen on $PORT
CMD ["sh", "-c", "sed -i 's/listen  .*/listen ${PORT};/' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]


