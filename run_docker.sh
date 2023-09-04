#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build . --tag tom-project-ml:v1

# Step 2: 
# List docker images
docker image list

# Step 3: 
# Run flask app
docker run --publish 8000:80 tom-project-ml:v1
