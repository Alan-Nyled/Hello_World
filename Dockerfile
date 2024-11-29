FROM nginx:alpine

# Copy the HTML file to the Nginx default folder
COPY index.html /usr/share/nginx/html/

# Expose the port that Cloud Run expects
EXPOSE 8080

# Dynamically set the Nginx configuration to use the port from the PORT environment variable
CMD ["sh", "-c", "sed -i 's/listen  .*/listen ${PORT};/' /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"]
