# Use an official nginx image
FROM nginx:latest

# Copy custom configuration files to the container
COPY ./index.html /usr/share/nginx/html/index.html
COPY ./style.css /usr/share/nginx/html/style.css

# Expose the port that Nginx will use
EXPOSE 8081

# Start the Nginx service
CMD ["nginx", "-g", "daemon off;"]
