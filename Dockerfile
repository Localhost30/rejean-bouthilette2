# Use a lightweight Nginx image
FROM nginx:alpine

# Copy the static HTML file to the Nginx document root
# We rename it to index.html so it loads by default
COPY crb-events-redesign(6).html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
