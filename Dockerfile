FROM nginx:alpine

# Copy the HTML file to the default directory for Nginx
COPY index.html /usr/share/nginx/html/

# Expose port 8080 for testing purposes
EXPOSE 8080

# Set the entrypoint to Nginx
CMD ["nginx", "-g", "daemon off;"]

