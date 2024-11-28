FROM nginx:alpine

# Copy the HTML file to the default directory for Nginx
COPY index.html /usr/share/nginx/html/

# Expose port 80 for testing purposes
EXPOSE 80

# Set the entrypoint to Nginx
CMD ["nginx", "-g", "daemon off;"]

