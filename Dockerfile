FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy all files from the current directory into the container
COPY . .

# Expose port 8000
EXPOSE 8000

# Run a simple HTTP server to serve the files
CMD ["python", "-m", "http.server", "8000"]