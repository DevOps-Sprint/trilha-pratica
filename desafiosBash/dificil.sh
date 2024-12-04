#!/bin/bash
docker build -t my-image:v1 .
docker login -u janazi1 -p $1
docker push janazi1/my-image:v1