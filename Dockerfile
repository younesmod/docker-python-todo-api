# Use official Python image
FROM python:3.11-slim

# maintainer labels
LABEL maintainer="Younes Modaresian <modaresian.younes@gmail.com> (https://github.com/younesmod)" \ 
    org.opencontainers.image.authors="Younes Modaresian <modaresian.younes@gmail.com>" \
    org.opencontainers.image.url="https://github.com/younesmod/dockerized-static-website/pkgs/container/dockerized-static-website" \
    org.opencontainers.image.source="https://github.com/younesmod/dockerized-static-website" \
    org.opencontainers.image.title="dockerized-static-website" \ 
    org.opencontainers.image.description="A simple nginx-based/dockerized project" \ 
    org.opencontainers.image.vendor="Younes Modaresian"
#\ org.opencontainers.image.licenses="MIT"

# Set working directory
WORKDIR /app

# Copy dependency file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy app code
COPY . .

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]