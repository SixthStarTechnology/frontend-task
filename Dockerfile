# Use an official Nginx image as the base image
FROM nginx:latest

# Set the working directory in the container
WORKDIR /usr/share/nginx/html

# Copy your PHP application files from the current directory to the container
COPY . /usr/share/nginx/html/

# Expose port 80 for Nginx web server
EXPOSE 80

# Start the Nginx web server
CMD ["nginx", "-g", "daemon off;"]
