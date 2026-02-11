#!/bin/bash
aws ecr get-login-password --region us-east-1 |
docker login --username AWS --password-stdin 83347785371.dkr.ecr.us-east-1.amazonaws.com

docker pull 083347785371.dkr.ecr.us-east-1.amazonaws.com/wed-demo-ecr:latest

docker run -d -p 80:80 --name webapp \
083347785371.dkr.ecr.us-east-1.amazonaws.com/wed-demo-ecr:latest