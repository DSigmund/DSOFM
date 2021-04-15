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

.SOURCESTART
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

.SOURCESTOP

.LP 
Build an image

.SOURCESTART
docker build --tag <IMAGENAME> . 
.SOURCESTOP

.LP 
Run an image in a container

.SOURCESTART
docker run <IMAGENAME> [-p <OUTERPORT>:<INNERPORT>] [--name <NAME>]
.SOURCESTOP

.LP 
Check running containers

.SOURCESTART
docker ps
.SOURCESTOP

.LP 
Check Logs from a container

.SOURCESTART
docker logs <NAME> [-f]
.SOURCESTOP

.LP 
Stop the Containers

.SOURCESTART
docker stop <NAME>
.SOURCESTOP

.LP
