![Docker Image](https://img.shields.io/badge/GHCR-Flask-blue?logo=docker)
[![Build and Push Docker Images](https://github.com/younesmod/docker-python-todo-api/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/younesmod/docker-python-todo-api/actions/workflows/docker-publish.yml)
[![Scan Docker Image](https://github.com/younesmod/docker-python-todo-api/actions/workflows/scan.yml/badge.svg)](https://github.com/younesmod/docker-python-todo-api/actions/workflows/scan.yml)
# 🐳 Dockerized To-Do API / Hello World App

A simple Flask app that demonstrates how to containerize an application using Docker.

## 🚀 Features
- Simple REST API (`GET` and `POST`)
- Uses dependencies from `requirements.txt`
- Dockerized for easy deployment

## 🧰 Tech Stack
- Python + Flask
- Docker

## 🧩 Setup

```bash
# Clone repo
git clone https://github.com/younesmod/docker-python-todo-api.git
cd docker-python-todo-api

# Build Docker image
docker build -t docker-python-todo-api .

# Run container
docker run -p 5000:5000 docker-python-todo-api    # Flask version
```
## 🧪 Example API Calls
```bash
curl http://localhost:5000/
curl -X POST -H "Content-Type: application/json" \
     -d '{"task": "Learn Docker"}' http://localhost:5000/todos
```