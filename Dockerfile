
FROM node:22-bookworm-slim

WORKDIR /usr/src/app

COPY package*.json /app

RUN npm install

COPY . /app

EXPOSE 3000


CMD ["npm", "start"]