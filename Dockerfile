#FROM node:latest
FROM docker:dind

# Install Node
RUN apt-get update
RUN apt-get install -y nodejs npm
RUN update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install --silent
COPY . /usr/src/app
EXPOSE 3000

ENV PORT 3000

CMD [ "npm", "start" ]