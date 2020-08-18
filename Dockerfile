FROM node:12.14.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

RUN npm ci --only=production

COPY . .

EXPOSE 4444

CMD [ "npm", "start"]