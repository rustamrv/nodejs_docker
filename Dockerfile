FROM node:10-alpine

RUN mkdir -p /home/admin-acer/Documents/home_projects/nodejs_docker/node_modules && chown -R node:node /home/admin-acer/Documents/home_projects/nodejs_docker

WORKDIR /home/admin-acer/Documents/home_projects/nodejs_docker

COPY package*.json ./

USER node

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "src/index.ts" ]