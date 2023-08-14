# Cloud-Native-Monitoring-Application

<img src="https://github.com/vaibhavkapase1302/Cloud-Native-Monitoring-Application/blob/main/Project%20Architecture.jpg" width="1000" height="400" alt="Example Image">

<!--<img src="https://github.com/vaibhavkapase1302/Cloud-Native-Monitoring-Application/blob/main/GitOps%20Architecture.jpg" width="800" height="300" alt="Example Image">-->


# Your Project Name

Brief description of your project.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Contributing](#contributing)
- [License](#license)

## Introduction

Introduce your project briefly and provide context for its purpose and goals.

## Features

List the key features and functionalities of your project.

## Installation

# Cloud-Native Monitoring Application

This project guides you through the process of creating a cloud-native monitoring application using Python, Flask, Docker, and Kubernetes. The goal of this project is to build a robust monitoring solution that can track and manage various metrics within a cloud environment.

Through a series of structured phases, you'll learn how to develop the application, containerize it using Docker, and deploy it on an Elastic Kubernetes Cluster (EKS) on AWS. By following these steps, you'll gain valuable insights into creating, packaging, and orchestrating a modern cloud-native application.

Whether you're new to cloud-native development or looking to enhance your skills, this project provides hands-on experience with key concepts and tools, allowing you to monitor and manage your applications effectively in a cloud environment.


# Cloud-Native Monitoring Application with Flask, Docker, and Kubernetes

Throughout this project, we will learn how to create a monitoring application in Python using Flask. We will start by building the application and containerize it using Docker. Once we have our app containerized and running locally, we will then create an Elastic Container Registry (ECR) in AWS using the Python `boto3` module. We will push the Docker image of our app to ECR to store, retrieve, or use the docker image. Next, we will move to the deployment phase where we will create an Elastic Kubernetes Cluster on Elastic Kubernetes Service (EKS) with nodes and deploy the application on Kubernetes. This project is divided into three phases.

## Phases

### Phase 1: Building the App

In this phase, we will focus on building the monitoring application using Python and Flask. We'll cover the following steps:

1. Set up prerequisites, including Python and Flask installation.
2. Create the Flask application and define its endpoints.
3. Implement monitoring functionality using relevant libraries (e.g., `psutil`).
4. Test the Flask app locally to ensure it's functioning correctly.

### Phase 2: Containerizing the App

In this phase, we will containerize the Flask application using Docker. We'll cover the following steps:

1. Install Docker and Docker Compose on your local machine.
2. Write a Dockerfile to define the app's containerization process.
3. Build the Docker image of the monitoring app.
4. Run the Docker container locally to verify its behavior.

### Phase 3: Deploying the App on Kubernetes

In this final phase, we will deploy the Dockerized monitoring application to a Kubernetes cluster on AWS EKS. We'll cover the following steps:

1. Create an Elastic Kubernetes Cluster (EKS) on AWS.
2. Set up nodes within the EKS cluster to ensure scalability.
3. Use `boto3` to interact with AWS services and create an Elastic Container Registry (ECR).
4. Push the Docker image of our app to ECR for storage and retrieval.
5. Deploy the Flask application on the EKS cluster using Kubernetes manifests.
6. Monitor the application's behavior on the Kubernetes cluster.

## Prerequisites

Before you start this project, make sure you have the following:

- An AWS account with programmatic access and AWS CLI configured.
- Python 3 installed on your machine.
- Docker and Docker Compose installed.
- A code editor (e.g., VS Code) for writing and editing code.


## Installation:
1. Update the package list:
```c
sudo apt update
```

2. Upgrade the package list:
```c
sudo apt upgrade 
```

3. Install Python and python3-pip:
```c
sudo apt install python3 python3-pip
```

4. Verify the installation:
```c
pip3 --version
```

5. Create a new virtual environment for Python dependencies:
```bash
sudo apt install virtualenv
```


## License

This project is licensed under the [MIT License](LICENSE).
