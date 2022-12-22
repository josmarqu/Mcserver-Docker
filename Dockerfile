#DOCKER IMAGE FOR MINECRAFT 1.12.2 SERVERS HOSTING

#Download base image ubuntu 18.04
FROM ubuntu:18.04

#LABEL about the custom image
LABEL maintainer="josemarquezmontoro2@gmail.com"
LABEL version="0.1"
LABEL description="Custom Docker Image for hosting minecraft servers using 1.12.2 version"

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update

# Install wget
RUN apt install -y wget

# Install jdk 8
RUN apt install -y openjdk-8-jre-headless

# Create Server directory
RUN mkdir /home/MinecraftServer

# Create eula.txt file
RUN touch /home/MinecraftServer/eula.txt

# Insert text agreement to Minecraft Eula
RUN echo "#By changing the setting below to TRUE you are indicating your agreement to our EULA (https://account.mojang.com/documents/minecraft_eula)." >> /home/MinecraftServer/eula.txt

# Accept Minecraft Eula
RUN echo "eula=true" >> /home/MinecraftServer/eula.txt

# Download Minecraft server 1.12.2 jar
RUN cd /home/MinecraftServer/ ; wget https://launcher.mojang.com/v1/objects/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar

# Run Server
RUN cd /home/MinecraftServer/ ; (timeout 20 java -Xms1024M -Xmx1024M -jar server.jar nogui; exit 0)

