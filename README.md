# README

This is a simple Ruby on Rails application to test deployments to
- TAS ( VMware Tanzu Application Service)
- Kubernetes

The latest version prints values of two environment variables.
These environment variables could be set via Vault-Kubernetes integration. Look at the /k8s/deploy-service-vault.yaml file 
to see how it is configured.

## Build docker image
docker build .

## Run on docker (port 3300)
docker run -p 3300:3000 <imageID>

## Tag and Push to DockerHub:
docker tag <imageID> grenader/ror:library7
docker push grenader/ror:library7

## Run the application on Kubernetes
k apply -f k8s/deploy-service-vault.yaml

