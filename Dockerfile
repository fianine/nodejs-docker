FROM node:10-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
RUN apk add --no-cache git
RUN apk add --no-cache openssh

WORKDIR /home/node/app

COPY package*.json ./
USER node
RUN git clone https://github.com/fianine/nodejs-docker.git
RUN npm install

COPY --chown=node:node . .

EXPOSE 3000

CMD [ "npm", "start" ]
