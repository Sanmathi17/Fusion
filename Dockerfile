# Use the Nginx base image
FROM nginx:alpine

# Copy the HTML file to the Nginx HTML directory
COPY index.html /usr/share/nginx/html/index.html

# Expose the port on which Nginx will run
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]

FROM httpd:2.4
COPY ./JAYANAGAR/ /usr/local/apache2/htdocs/

