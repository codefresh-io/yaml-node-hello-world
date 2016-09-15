FROM node:latest

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install --silent
COPY . /usr/src/app
EXPOSE 3000

RUN echo "I can write without double quotes" >> file.txt

RUN ls -l

RUN pwd

ENV PORT 3000
CMD [ "npm", "start" ]