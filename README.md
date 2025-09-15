# Mini-SaaS

<<<<<<< HEAD
A lab project for:
- Java Spring Boot backend
- PostgreSQL database
- Docker & Docker Compose
- GitHub Actions CI/CD
- Monitoring with Grafan
=======
A lightweight Spring Boot application with Docker, PostgreSQL, and monitoring (Prometheus + Grafana). Includes a CI/CD pipeline for automated build, Docker image deployment, and database backups.
>>>>>>> 87e4710870fe8a6aeea236c4452d5584b0ad5696

## Features

- REST API with health check endpoint (`/`)
- PostgreSQL database with persistent storage
- Dockerized multi-container setup
- Prometheus + Grafana monitoring
- CI/CD pipeline via GitHub Actions
- Automated database backups (last 7 retained)

## Quick Start

1. Clone the repository:

``bash
git clone https://github.com/OltiKlaiqi/mini-saas-2.git
cd mini-saas-2


2. Set environment variables in .env:

''bash
POSTGRES_DB=minisaas
POSTGRES_USER=mini
POSTGRES_PASSWORD=mini


3.Run with Docker Compose:

''bash
docker-compose up -d --build


4. Access services:

App: http://localhost:8080

Prometheus: http://localhost:9090

Grafana: http://localhost:3001


[![CI/CD](https://github.com/OltiKlaiqi/mini-saas-2/actions/workflows/build.yml/badge.svg)](https://github.com/OltiKlaiqi/mini-saas-2/actions/workflows/build.yml)


