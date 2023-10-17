

# Flask Docker CI

A simple Flask web application that is containerized using Docker. This repository also includes a GitHub Actions workflow for CI which automatically builds and pushes the Docker image to Docker Hub.

## Project Overview

- **Flask App**: A basic "Hello World" Flask application.
- **Docker**: The application is containerized using Docker.
- **CI**: GitHub Actions are set up to automatically build the Docker image and push it to Docker Hub.

## Prerequisites

- Docker
- Git

## Local Development

1. Clone the repository:
   ```
   git clone https://github.com/Tessie475/flask_docker_ci.git
   cd flask_docker_ci
   ```

2. Build the Docker image:
   ```
   docker build -t myflaskapp:latest .
   ```

3. Run the Flask application inside the Docker container:
   ```
   docker run -p 5000:5000 myflaskapp:latest
   ```

4. Visit `http://localhost:5000` in your browser to access the application.

## CI Workflow
The workflows file for this project is located in the .github folder
The CI process is configured through GitHub Actions:

- Triggered on every push to the `main` branch.
- Automatically builds the Docker image.
- Pushes the Docker image to Docker Hub.
- Additionally, a build is scheduled every Saturday at 7 PM.
