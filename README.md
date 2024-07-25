# Go Hello World CI/CD Pipeline

This project demonstrates a complete CI/CD pipeline for a simple Go application that prints "Hello World". The pipeline includes Docker containerization, Kubernetes deployment, and GitHub Actions for automated building and deployment.

## Project Structure

- `src/main.go`: A simple Go application that prints "Hello World"
- `src/main_test.go`: code to test the Go application.
- `Dockerfile`: Instructions for building a Docker image of the Go application
- `kubernetes/`: 
  - `deployment.yaml`: Kubernetes Deployment configuration
  - `service.yaml`: Kubernetes Service configuration
- `scripts/`:
  - `build.sh`: Shell script to build the Docker image
  - `deploy.sh`: Shell script to deploy to Kubernetes
- `.github/workflows/ci-cd.yml`: GitHub Actions workflow for CI/CD

## Prerequisites

- Docker Desktop (for local Docker engine and Kubernetes cluster)
- Go programming language
- kubectl CLI
- GitHub account
- DockerHub account

## Local Development

1. Build the Docker image:
./scripts/build.sh

2. Push the docker image to docker hub.

3. Deploy to local Kubernetes cluster:
./scripts/deploy.sh

## CI/CD Pipeline

The project uses GitHub Actions for continuous integration and deployment. The workflow consists of two main jobs:

1. Build and Push: Builds the Docker image and pushes it to DockerHub.
2. Deploy: Deploys the application to the local Kubernetes cluster using a self-hosted runner.

To use this pipeline:

1. Set up a self-hosted runner on your local machine.
2. Configure DockerHub credentials as GitHub secrets.
3. Push changes to the main branch to trigger the workflow.

## Configuration

- Update the DockerHub repository in GitHub Actions workflow.
- Modify Kubernetes configurations in `kubernetes/` as needed.
- Adjust GitHub Actions workflow in `.github/workflows/ci-cd.yml` for your specific requiremen