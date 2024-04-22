# Use the official Nginx base image
FROM nginx:alpine

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy your website files into the container
COPY index.html jaya.css signin.html signin.css ./

# Specify the command to run when the container starts
CMD ["nginx", "-g", "daemon off;"]
