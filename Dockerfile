# FROM node:13-alpine this image is not available for windows/amd64

# FROM stefanscherer/node-windows:latest

# FROM mcr.microsoft.com/windows/servercore:ltsc2019

FROM microsoft/windowsservercore:1803

RUN mkdir -p /cicdnodejs

COPY . /cicdnodejs

# set default dir so that next commands executes in /home/app dir
WORKDIR /cicdnodejs

# will execute npm install in /home/app because of WORKDIR
RUN npm install

CMD ["npm", "run", "dev"]
