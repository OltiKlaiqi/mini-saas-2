# Mini-SaaS

A lightweight Spring Boot application with Docker, PostgreSQL, and monitoring (Prometheus + Grafana). Fully deployable with GitHub Actions CI/CD.

## Features

- Spring Boot REST API with a health check endpoint (`/`)
- PostgreSQL database with persistent storage
- Dockerized multi-container setup
- Monitoring via Prometheus and Grafana
- CI/CD pipeline for automated build, Docker image push, and deployment
- Automatic database backups (keeps last 7 backups)

## Getting Started

### Prerequisites

- Docker & Docker Compose
- Java 21
- Git
- Docker Hub account
- Azure VM (or Linux server for deployment)

### Run Locally

1. Clone the repository:

```bash
git clone https://github.com/OltiKlaiqi/mini-saas-2.git
cd mini-saas-2
Create .env with database and Spring variables:

bash
Copy code
POSTGRES_DB=minisaas
POSTGRES_USER=mini
POSTGRES_PASSWORD=mini

SPRING_DATASOURCE_URL=jdbc:postgresql://db:5432/minisaas
SPRING_DATASOURCE_USERNAME=mini
SPRING_DATASOURCE_PASSWORD=mini
Start containers:

bash
Copy code
docker-compose up -d --build
Access services:

App: http://localhost:8080 (should return OK)

Prometheus: http://localhost:9090

Grafana: http://localhost:3001

CI/CD
Push to main triggers:

Build and test with Maven

Build Docker image and push to Docker Hub

Deploy to Azure VM via SSH

Database Backup
Run backup.sh to create a PostgreSQL dump.

Script keeps only the last 7 backups.

Project Structure
bash
Copy code
src/                 # Java source code
Dockerfile           # Docker build
docker-compose.yml   # Multi-container orchestration
prometheus.yaml      # Prometheus config
application.yml      # Spring Boot config
.env                 # Environment variables
backup.sh            # Database backup script
.github/workflows/   # CI/CD pipelines
pom.xml              # Maven build file

[![CI/CD](https://github.com/OltiKlaiqi/mini-saas-2/actions/workflows/build.yml/badge.svg)](https://github.com/OltiKlaiqi/mini-saas-2/actions/workflows/build.yml)

