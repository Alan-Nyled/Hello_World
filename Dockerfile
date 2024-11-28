# Use an official Nginx image
FROM nginx:alpine

# Copy the HTML file to the Nginx default folder
COPY index.html /usr/share/nginx/html/index.html
