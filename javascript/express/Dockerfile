FROM node:alpine

COPY server.js .
COPY package.json .
COPY package-lock.json .

RUN npm install

CMD ["node", "server.js"]