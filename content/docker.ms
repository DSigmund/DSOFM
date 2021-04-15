.LP 
Docker is a set of platform as a service (PaaS) products that use OS-level virtualization to deliver software in packages called containers.
Containers are isolated from one another and bundle their own software, libraries and configuration files; they can communicate with each other through well-defined channels.
Because all of the containers share the services of a single operating system kernel, they use fewer resources than virtual machines.

.LP 
Container: These are are what docker is built on. They encapsulate an application and all of its libraries and dependencies, so it can be run anywhere Docker is installed. There are other containerization platforms, so check out how Docker stacks up against Kubernetes.

.LP 
Image: A Docker Image is a file that is essentially a snapshot of a container. You can create a container by running a Docker Image

.LP  
A typical Dockerfile (node.js)

.SOURCE
# Base Image
FROM node:alpine

# Create app directory
WORKDIR /opt/app

# Copy Package.json into container
COPY package*.json ./

RUN npm install

# Copy more files
COPY . .

# Expose inner port
EXPOSE 7500

# Run node.js Service
CMD [ "node", "index.js" ]

.SOURCE stop

.LP 
Build an image

.SOURCE
docker build --tag <IMAGENAME> . 
.SOURCE stop

.LP 
Run an image in a container

.SOURCE
docker run <IMAGENAME> [-p <OUTERPORT>:<INNERPORT>] [--name <NAME>]
.SOURCE stop

.LP 
Check running containers

.SOURCE
docker ps
.SOURCE stop

.LP 
Check Logs from a container

.SOURCE
docker logs <NAME> [-f]
.SOURCE stop

.LP 
Stop the Containers

.SOURCE
docker stop <NAME>
.SOURCE stop

.LP
