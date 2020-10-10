FROM node:alpine

COPY cheat.js .
COPY package.json .
COPY package-lock.json .

RUN npm install

CMD ["node", "cheat.js"]