#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=tungthanh97/tom-project-ml:v1

# Step 2
# Run the Docker Hub container with kubernetes
#kubectl create  deployment project-ml-microservice-kubernetes\
#    --image=$dockerpath
kubectl run tom-project-ml\
    --image=$dockerpath\
    --port=80 --labels app=tom-project-ml
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
#kubectl port-forward deployment.apps/project-ml-microservice-kubernetes 8000:80
kubectl port-forward tom-project-ml 8080:80
