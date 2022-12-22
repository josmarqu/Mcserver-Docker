# Mcserver-Docker
Custom Docker Ubuntu 18:04 image for hosting Minecraft servers with version 1.12.2

## Getting Started
- To get started clone the repository and make sure that Docker is installed and working.
- Build the image using Dockerfile and writing -> `$ docker build -t "image name" .` in the directory where Dockerfile is stored.
- Create container and run it using the image name given above -> `$ docker run -it "image name"`


## How to use
- Once open the container terminal, go to home/MinecraftServer -> `$ cd /home/MinecraftServer/`
- Inside you will see the files generated and necessary for the server.
- This only generates the server and a map, for its operation you must assign a port. 

## It can be helpful
- Assign Port to Minecraft Server -> https://www.hostinger.com/tutorials/how-to-port-forward-a-minecraft-server
- Server Properties File explanation -> https://minecraft.fandom.com/wiki/Server.properties
- Adding Mods -> https://apexminecrafthosting.com/how-to-add-mods/
