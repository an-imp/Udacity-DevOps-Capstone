# Udacity-DevOps-Capstone

## Project Overview

Capstone project for Udacity's "Cloud DevOps Engineer" Nanodegree Program.

<hr>

## Tools Used

- Git & GitHub
- AWS & AWS-CLI
- Ngnix
- Docker & Docker-Hub Registery
- Jenkins
- Kubernetes CLI (kubectl)
- EKS
- CloudFormation
- BASH

<hr>

##Set Up Pipeline
![upload_docker_image](screenshots/upload_docker_image.png)
![jenkins_credentials](screenshots/jenkins_credentials.png)

##Use image repository to store Docker images
![upload_docker_image](screenshots/upload_docker_image.png)

##Execute linting step in code pipeline
![lint_failed](screenshots/lint_failed.png)
![lint_passed](screenshots/lint_passed.png)

##Build a Docker container in a pipeline
![build_docker_in_jenkins](screenshots/build_docker_in_jenkins.png)

##The Docker container is deployed to a Kubernetes cluster
![cloudformation_stack_to_create_eks](screenshots/cloudformation_stack_to_create_eks.png)
![create_kubernetes_cluster](screenshots/create_kubernetes_cluster.png)
![load-balancer-created](screenshots/load-balancer-created.png)

##Use Blue/Green Deployment or a Rolling Deployment successfully
![green_blue_deployment_succeeded](screenshots/green_blue_deployment_succeeded.png)
![deployment_succeeded](screenshots/deployment_succeeded.png)

