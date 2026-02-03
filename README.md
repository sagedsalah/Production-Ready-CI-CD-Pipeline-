#  Production-Ready CI/CD Pipeline with FastAPI, Docker & Jenkins

##  Project Overview

This project demonstrates a production-style DevOps workflow implementing:

- FastAPI backend application
- Multi-stage Docker build
- Docker Compose with PostgreSQL
- Automated unit testing
- Jenkins CI/CD pipeline
- Containerized deployment

The goal of this project is to simulate a real-world DevOps environment with automated build, test, and deployment processes.

---

##  Architecture

Developer → GitHub → Jenkins Pipeline → Docker Build → Run Tests → Deploy Container

---

##  Tech Stack

- Python 3.12
- FastAPI
- PostgreSQL
- Docker
- Docker Compose
- Jenkins
- Git & GitHub
- Pytest

---

##  Project Structure

production-ci-cd-pipeline/
│
├── app/
│ ├── main.py
│ └── requirements.txt
│
├── tests/
│
├── Dockerfile
├── docker-compose.yml
├── Jenkinsfile
├── README.md
└── screenshots/

---

##  Docker Implementation

- Multi-stage Docker build
- Slim production image
- Container exposed on port 8000
- Environment-ready configuration

Run locally:

```bash
docker build -t ci-cd-app .
docker run -d -p 8000:8000 ci-cd-app

```

## Docker Compose Setup

Application container connected to PostgreSQL container.

Run full stack:

```bash
docker-compose up --build

```

## Automated Testing

Unit tests implemented using pytest.

Run tests manually:

```bash
pytest

```

Tests are automatically executed inside Jenkins pipeline.


## CI/CD Pipeline (Jenkins)

Pipeline Stages:

Checkout from GitHub

Build Docker Image

Run Unit Tests

Deploy Container

Verify Deployment

Pipeline runs automatically on each build trigger.


## Project Screenshots

Install Plugins

Create Admin User

Local Application Running

Docker Build Running

Docker Build Success

Dockerfile

Docker Compose Running

Testing

Intialized empty Git Repositry 

Jenkins Console Output

## DevOps Concepts Demonstrated

Infrastructure as Code mindset

Containerization

CI/CD automation

Service orchestration

Production-style environment separation

Automated testing before deployment

Author

Junior DevOps Engineer : Saged Lellah Salah
Focused on CI/CD Automation, Containerization & Cloud-Native workflows.


