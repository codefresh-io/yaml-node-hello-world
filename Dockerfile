FROM node:latest

ARG folder

RUN echo $folder

RUN mkdir -p $folder
WORKDIR $folder

COPY package.json $folder
RUN npm install --silent
COPY . $folder
EXPOSE 3000

RUN echo "I can write without double quotes" >> file.txt

RUN ls -l

RUN pwd

ENV PORT 3000
CMD [ "npm", "start" ]